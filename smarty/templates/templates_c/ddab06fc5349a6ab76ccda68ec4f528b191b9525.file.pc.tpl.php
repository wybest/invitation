<?php /* Smarty version Smarty-3.1.13, created on 2013-10-31 14:48:44
         compiled from "smarty\templates\templates\pc.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2447552724d47cd1526-94737838%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ddab06fc5349a6ab76ccda68ec4f528b191b9525' => 
    array (
      0 => 'smarty\\templates\\templates\\pc.tpl',
      1 => 1383230921,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2447552724d47cd1526-94737838',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52724d47e73f35_92145537',
  'variables' => 
  array (
    'bigtitle' => 0,
    'show_time' => 0,
    'mini_time' => 0,
    'man' => 0,
    'women' => 0,
    'house' => 0,
    'title' => 0,
    'message' => 0,
    'images' => 0,
    'name' => 0,
    'coordinate' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52724d47e73f35_92145537')) {function content_52724d47e73f35_92145537($_smarty_tpl) {?>
<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="description" content="全免费的良缘电子请帖采用云存储技术，安全便捷。兼容手机、平板、电脑、电视等智能设备，确保每位亲朋好友都能看到。提供功能强大的制作系统，1分钟即可完成精美的电子喜帖。在制作喜帖的同时，提供数十套模板风格供您选择，彰显不同的自我。" />
<meta name="robots" content="follow, all" />
<meta charset="utf-8">
<link rel="stylesheet" href="template/4/style/css/style.css" type="text/css" media="screen">
<link type="text/css" href="template/4/style/css/jquery-ui-1.8.18.custom.css" rel="stylesheet" />	
<link href="template/4/style/css/prettyPhoto.css" rel="stylesheet" />
<script src="template/4/style/js/jquery-1.7.1.min.js"></script>
<script src="template/4/style/js/superfish.js"></script>
<script src="template/4/style/js/jquery-ui-1.8.18.custom.min.js"></script>
<script src="template/4/style/js/jquery.scrollorama.js"></script>
<script src="template/4/style/js/jquery.easing.1.3.js"></script>
<script src="template/4/style/js/tms-0.4.1.js"></script>
<script src="template/4/style/js/uCarousel.js"></script>
<script src="template/4/style/js/jquery.prettyPhoto.js"></script>
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
	<script src="template/4/style/js/html5.js"></script>
	<link rel="stylesheet" href="template/4/style/css/ie.css"> 
<![endif]-->
<style>
#gallery img{
	max-width:290px;max-height:220px;
	border:5px solid white;
	margin:5px;
}
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
				<h1><a href="####"><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</a></h1>
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
			<p class="text1"><?php echo $_smarty_tpl->tpl_vars['man']->value;?>
 与<?php echo $_smarty_tpl->tpl_vars['women']->value;?>
 新婚大喜.</p>
			<a href="#page2" class="btn_down"></a>
		</div>
		<div id="page2">
			<a href="#page1" class="btn_up"></a>
			<h2><span>真诚的邀请</span><img src="template/4/style/images/star.png" alt=""></h2>
			<div class=" container_12">
				<div class="wrapper">
					
					<h3 style="font-family:微软雅黑"><?php echo $_smarty_tpl->tpl_vars['man']->value;?>
  &amp; <?php echo $_smarty_tpl->tpl_vars['women']->value;?>
 </h3>
					<p style="font-size:18px;margin:8px 0px;padding:0px;font-family:微软雅黑">敬邀：<span style="font-size:18px;font-weight:bold">各位亲朋好友</span></p>					
					<p>
					

在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于
<?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>

举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!


<span>地点： <?php echo $_smarty_tpl->tpl_vars['house']->value;?>
</span></p>
					
				</div>
			</div>
			<a href="#page3" class="btn_down"></a>
		</div>
		<div id="page3">
			<a href="#page2" class="btn_up"></a>
			<h2><span><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</span><img src="template/4/style/images/star.png" alt=""></h2>
			<h3>Our Story</h3>
			<div style="text-align:left; padding:20px;">
			<p><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</p> 
			</div>
<a href="#page4" class="btn_down"></a>
		</div>
		<div id="page4">
			<a href="#page3" class="btn_up"></a>
			<h2><span>爱的映像</span><img src="template/4/style/images/star.png" alt=""></h2>
						<div id="gallery">
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
					<a href="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" rel="prettyPhoto[gallery1]">
					<img src="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" alt="" style=" width:290px; height:205px;">
					</a>
				<?php endfor; endif; ?>
            			</div>
			<a href="#page5" class="btn_down"></a>
		</div>
		<div id="bg-page5">
			<div id="page5">
				<a href="#page4" class="btn_up"></a>
				<h2><span>地图</span><img src="template/4/style/images/star.png" alt=""></h2>
				<div class="wrapper">
					<div class="fleft">
	
						<div id="container" style="width:450px;height:260px;margin:20px;margin-top:40px;border:4px solid #DAD6D1"></div>
					</div>
					<div class="contactform">
						<form id="contact-form">
								<input type="hidden" name="fromkey" value="xitie">
                                <input type="hidden" name="userid" value="8">
         		 				<input type="hidden" name="enews" value="AddMemberGbook">		
							<fieldset>
								
								<label class="email">
								    <input id="guest" type="text" name="guest" placeholder="姓名" >
								</label>
								<label class="name">
								<span class="textStyle3" style="line-height:50px;">是否到场参加婚礼：
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
								</span>
									<span class="clear"></span>
									
								</label>
								
								<label class="message">
									<textarea name="message" id="message" placeholder="请输入您的祝福信息" required="" data-minlength="10"></textarea>
									<span class="clear"></span>
								</label>
								<div class="buttons"><span><a class="button" id="btn_backinfo" onClick="javascript:return Check();">发送留言</a></span><span id="bi_msg" style="font-size:12px;margin-top:25px;color:red;text-align:right;line-height:40px"></span></div>
							</fieldset>
						</form>
					</div>
				</div>
				<div class="social_pad">
					
				</div>
				<footer style="line-height:20px">
					<h1><a href="#page1">新婚大喜</a></h1>
						
	<div style="display:inline;">
            <iframe style=" margin-top:10px;height:0px;overflow:hidden;width:0px;background:#FFFFFF; border:0" scrolling="no" frameborder="0" id="fr_mp3" src="/e/member/EditInfo/Edit.php?name=LoveParadise"></iframe>
	</div>
				</footer>
			</div>
		</div>
	</section></div>
</div>

<!-- Coded by Ariadna -->
<script>
function Check()
{

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
	 
}
</script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
$(function (){
	var map = new BMap.Map("container");
	map.enableScrollWheelZoom();

	var x,y;
	var marker = '';
		map.centerAndZoom(new BMap.Point(<?php echo $_smarty_tpl->tpl_vars['coordinate']->value;?>
), 15);
		map.addControl(new BMap.NavigationControl());  

		
		map.removeOverlay(marker);
		var pt = new BMap.Point(<?php echo $_smarty_tpl->tpl_vars['coordinate']->value;?>
);
		marker = new BMap.Marker(pt); 
		map.addOverlay(marker); 
});

</script>
<div style="display:none"> 
 
</div>
</body>
</html>
<?php }} ?>