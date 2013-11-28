<?php /* Smarty version Smarty-3.1.13, created on 2013-11-28 10:42:29
         compiled from "smarty\templates\templates\pc\p3.tpl" */ ?>
<?php /*%%SmartyHeaderCode:15797529194573d63c6-38030598%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1d3dded260b3d1bd8542d65242533a3c1ab8111e' => 
    array (
      0 => 'smarty\\templates\\templates\\pc\\p3.tpl',
      1 => 1385473183,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15797529194573d63c6-38030598',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5291945742fee4_12807864',
  'variables' => 
  array (
    'bigtitle' => 0,
    'show_time' => 0,
    'mini_time' => 0,
    'vip' => 0,
    'man' => 0,
    'women' => 0,
    'house' => 0,
    'title' => 0,
    'message' => 0,
    'images' => 0,
    'adress' => 0,
    'music' => 0,
    'name' => 0,
    'coordinate' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5291945742fee4_12807864')) {function content_5291945742fee4_12807864($_smarty_tpl) {?>﻿<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</title>
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
			<div class="title2"><?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['mini_time']->value;?>
</div>
			<p class="text1"><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</p>
			<a href="#page2" class="btn_down"></a>
		</div>
		<div id="page2">
			<a href="#page1" class="btn_up"></a>
			<h2><span>真诚的邀请</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
			<div class=" container_12">
				<div class="wrapper">
					<?php if ($_smarty_tpl->tpl_vars['vip']->value!="none"){?>
              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold"><?php echo $_smarty_tpl->tpl_vars['vip']->value;?>
</span></p>
            <?php }?> 
					<h3 style="font-family:微软雅黑"><?php echo $_smarty_tpl->tpl_vars['man']->value;?>
  &amp; <?php echo $_smarty_tpl->tpl_vars['women']->value;?>
 </h3>
					<p>
					
在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于
<?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>

举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!
<br/>

<span>地点： <?php echo $_smarty_tpl->tpl_vars['house']->value;?>
</span></p>
					
				</div>
			</div>
			<a href="#page3" class="btn_down"></a>
		</div>
		<div id="page3">
			<a href="#page2" class="btn_up"></a>
			<h2><span><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
			<div style="text-align:left; padding:20px;">
			<p><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</p>  
			</div>
<a href="#page4" class="btn_down"></a>
		</div>
		<div id="page4">
			<a href="#page3" class="btn_up"></a>
			<h2><span>爱的映像</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
						<div >
						  
						  <ul id="Gallery" class="gallery">
          
				          	<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['name'] = 'customer';
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['images']->value) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total']);
?>
								<li><a href="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" rel="prettyPhoto[gallery1]">
								<img src="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" alt="" />
								</a></li>
							<?php endfor; endif; ?>
				           </ul>
						
						</div>
			<a href="#page5" class="btn_down"></a>
		</div>
		<div id="bg-page5">
			<div id="page5">
				<a href="#page4" class="btn_up"></a>
				<h2><span><?php echo $_smarty_tpl->tpl_vars['adress']->value;?>
</span><img src="templates/front_templ/wedding_theme_017/images/star.png" alt=""></h2>
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
			data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1" width="19" height="20"
			id="dewplayer-mini">
			<param name="wmode" value="transparent">
			<param name="movie"
				value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1">
			<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1" width="20"
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
	 	
	 	var username='<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
';

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
		map.centerAndZoom(new BMap.Point(<?php echo $_smarty_tpl->tpl_vars['coordinate']->value;?>
), 13);
		map.addControl(new BMap.NavigationControl());  
		map.removeOverlay(marker);
		var pt = new BMap.Point(<?php echo $_smarty_tpl->tpl_vars['coordinate']->value;?>
);
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
<?php }} ?>