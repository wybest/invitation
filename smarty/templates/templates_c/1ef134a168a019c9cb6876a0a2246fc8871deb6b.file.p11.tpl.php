<?php /* Smarty version Smarty-3.1.13, created on 2013-11-25 14:57:42
         compiled from "smarty\templates\templates\pc\p11.tpl" */ ?>
<?php /*%%SmartyHeaderCode:30846529364d18eb033-23263036%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1ef134a168a019c9cb6876a0a2246fc8871deb6b' => 
    array (
      0 => 'smarty\\templates\\templates\\pc\\p11.tpl',
      1 => 1385391459,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30846529364d18eb033-23263036',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_529364d19c7a41_49129249',
  'variables' => 
  array (
    'bigtitle' => 0,
    'man' => 0,
    'women' => 0,
    'show_time' => 0,
    'mini_time' => 0,
    'vip' => 0,
    'house' => 0,
    'adress' => 0,
    'images' => 0,
    'title' => 0,
    'message' => 0,
    'music' => 0,
    'name' => 0,
    'coordinate' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_529364d19c7a41_49129249')) {function content_529364d19c7a41_49129249($_smarty_tpl) {?>﻿<!DOCTYPE html>
<html>
<head>
<title><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</title>
<meta name="keywords" content="电子喜帖,电子请柬,免费电子喜帖,免费电子请柬,挚爱电子喜帖,电子喜帖模板,手机电子喜帖" />
<meta name="robots" content="follow, all" />
<meta charset="utf-8">
<link href="templates/front_templ/wedding_theme_013/css/reset.css" rel="stylesheet" />
<link href="templates/front_templ/wedding_theme_013/css/nivo-slider.css" rel="stylesheet" />
<link href="templates/front_templ/wedding_theme_013/css/prettyPhoto.css" rel="stylesheet" />
<link href="templates/front_templ/wedding_theme_013/css/style.css" rel="stylesheet" />
<script src="templates/front_templ/wedding_theme_013/js/jquery-1.4.4.min.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/cufon-yui.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/Century_Gothic_400.font.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/Exmouth_400.font.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/jquery.nivo.slider.pack.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/jquery.tinycarousel.min.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/jquery.prettyPhoto.js"></script>
<script src="templates/front_templ/wedding_theme_013/js/clearInput.js"></script>
<!--[if lt IE 7]>
    <script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
    <![endif]-->
<!--[if lt IE 9]>
    <script src="templates/front_templ/wedding_theme_013/js/html5.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/jsCSS3selectors.js"></script>
    <link href="templates/front_templ/wedding_theme_013/css/ie.css" rel="stylesheet" />
    <![endif]-->
<style>
.twitter{
	display:none;
}
</style>    
</head>
<body onLoad="clearInput('contact_form')">
<div id="main"><!-- header -->
  <header>
    <h1><a href="index.html"><span class="orange">Wedding</span>Ecard</a><span
	class="desc"><?php echo $_smarty_tpl->tpl_vars['man']->value;?>
 &amp; <?php echo $_smarty_tpl->tpl_vars['women']->value;?>
<br>
	        <span class="sndln"><?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['mini_time']->value;?>
</span>
            </span></h1>
  </header>
  <!-- content -->
  <dl id="content">
    <dt class="dt1"><a href="#"></a></dt>
    <dd id="page1">
      <div class="inner">
        <div class="slider">
          <article>
          	<?php if ($_smarty_tpl->tpl_vars['vip']->value!="none"){?>
		              <p style="margin:8px 0px;padding:0px"><span style="font-size:18px;font-weight:bold"><?php echo $_smarty_tpl->tpl_vars['vip']->value;?>
</span></p>
		            <?php }?>              
                           <p>新郎：<?php echo $_smarty_tpl->tpl_vars['man']->value;?>
<br />
新娘：<?php echo $_smarty_tpl->tpl_vars['women']->value;?>
<br />
在这温馨浪漫，喜悦甜蜜的日子里 我俩决定于<?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['mini_time']->value;?>
举行结婚典礼，届时敬备酒宴，欢迎您到来分享这份喜悦，您的光临将使我们的婚宴增添万分光彩!<br />
<span>地点： <?php echo $_smarty_tpl->tpl_vars['house']->value;?>
</span><br />
<span>酒店地址： <?php echo $_smarty_tpl->tpl_vars['adress']->value;?>
</span></p>
          </article>
        </div>
      </div>
    </dd>
    <dt class="dt2"><a href="#"></a></dt>
    <dd id="page2">
      <div class="inner">
        <article>
          <div id="gallery">
            <div class="viewport">
              <ul class="overview gallery">
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
" rel="prettyPhoto[gallery1]"><img src="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
"  style="max-width:288px;max-height:309px" /></a></li>
			  <?php endfor; endif; ?>
				              </ul>
            </div>
            <div class="galerry_nav"><a class="buttons prev" href="#">left</a><a
		class="buttons next" href="#">right</a>
				
			</div>
			<div style="float:left;padding-top:38px">
						</div>
          </div>
        </article>
      </div>
    </dd>
    <dt class="dt3"><a href="#"></a></dt>
    <dd id="page3">
      <div class="inner">
        <article>
          <h2><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h2>
          <h4>Declaration of love</h4>
          <div style='border:0px solid red;padding:3px; height:320px; OVERFLOW: auto; '><p>
          <?php echo $_smarty_tpl->tpl_vars['message']->value;?>

          </p></div>
		</article>
      </div>
    </dd>
    <dt class="dt4"><a href="#"></a></dt>
    <dd id="page4">
      <div class="inner">
        <article>
          <h2 class="extra">婚礼地点</h2>
          <h4><?php echo $_smarty_tpl->tpl_vars['adress']->value;?>
</h4>
          <ul class="list1">
            <li> 
            <div class="google_map" id="container" style="width:580px;height:300px;border:2px solid #7d7463"></div>
            </li>
          </ul>
        </article>
      </div>
    </dd>
    <dt class="dt5"><a href="#"></a></dt>
    <dd id="page5">
      <div class="inner">
        <article>
          <h2 class="extra1">回执留言</h2>
          <form id="contact_form">
            <div class="clearfix">
              <input type="text"  placeholder="姓名:" id="guest" class="input marNone">
              <span
		class="clear"></span></div>
            <div class="clearfix333" style="margin:55px 0 15px 0;">
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
            <div class="clearfix">
              <textarea cols="5" rows="50" id="message"  placeholder="留言:"></textarea>
              <span class="clear"></span></div>
            <div class="buttons" style="margin-top:150px"> <a href="javascript:void(0)" class="more" id="btn_backinfo"><span>发送</span></a></div>
            <p id="bi_msg" style="font-size:12px;margin-top:5px;color:red;text-align:right;padding-right:5px"></p>
          </form>
        </article>
      </div>
    </dd>
  </dl>
  <!-- footer -->
  <footer>
    <p class="privacy nocolor und"  style="line-height:20px">
    	<span style="display:inline;">
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
		</object></span>
	<!-- {%FOOTER_LINK} -->
	</p>
	
  </footer>
</div>
<div class="top_brd"></div>
<script type="text/javascript">
	Cufon.now();
	var $content = $('#content'), $contentDD = $('#content>dd');

	$(document).ready(function() {
		$content.css({
			marginTop : '-600px'
		});

		//$("a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:5000, autoplay_slideshow: true});
		var biz_name = '';
		var biz_url = '';
		$("a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});
		
		clearInput('contact_form');
		$contentDD.css({
			display : 'none'
		})
	});
	$(window).load(function() {

		$content.animate({
			marginTop : '184px'
		}, 300, function() {
			$(this).animate({
				marginTop : '164px'
			}, 400);
			$(this).prev("header").find("h1 a").fadeIn(500, function() {
				$(this).next().fadeIn(300);
			});
		});

		$contentDD.css({
			display : 'block'
		})

		$('#slider').nivoSlider({
			effect : 'slideInRight',
			slices : 10
		});
		$('#gallery').tinycarousel();

		$contentDD.css({
			display : 'none'
		})
	})
	$(function() {

		$(
				'#content:not(.nav_block)>dt:not(.active) a,footer .privacy:not(.active) a[rel=privacy]')
				.live(
						'click',
						function() {
							var next = this.rel == 'privacy' ? $('#privacy')
									: $(this).parent().next(), width = next
									.width(), parent = next.parent(), visible = parent
									.find('>dd:visible').css({
										overflow : 'hidden'
									})
							parent.addClass('nav_block')
							$('#content>dt,.privacy').removeClass('active')
							$(this).parent().addClass('active')
							if (this.rel == 'privacy')
								$('#content>dt>a').removeClass('active')
										.animate({
											opacity : 0
										})
							if (parent.css('left') != 0)
								next.parent().animate({
									left : 0
								})
							next.show().css({
								width : '64px'
							}).stop().animate({
								width : width + 'px'
							}, {
								step : visible.length ? function(now) {
									visible.width(width - now)
								} : '',
								complete : function() {
									next.css({
										overflow : 'visible'
									})
									visible.css({
										width : width + 'px'
									}).hide()
									parent.removeClass('nav_block')
								}
							})
							return false
						})

		$('.active a,#content.nav_block').live('click', function() {
			return false
		})

		$('#content>dt>a:not(.active)').css({
			opacity : 0
		}).live('mouseover', function() {
			$(this).stop().animate({
				opacity : 1
			})
		}).live('mouseout', function() {
			$(this).stop().animate({
				opacity : 0
			})
		}).live(
				'click',
				function() {
					$(this).addClass('active').parent().siblings().find('>a')
							.removeClass('active').stop().animate({
								opacity : 0
							})
				})
	});
	
	$(function (){
		//$('dt.dt1 a').click();
	});
</script> 
<script type="text/javascript">
	try {
		var pageTracker = _gat._getTracker("UA-7078796-1");
		pageTracker._trackPageview();
	} catch (err) {
	}
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
), 14);
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