<?php /* Smarty version Smarty-3.1.13, created on 2013-11-28 10:43:06
         compiled from "smarty\templates\templates\pc\p5.tpl" */ ?>
<?php /*%%SmartyHeaderCode:221045291a10c6a0ae6-27988974%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd7850a2a238f24674f88e7aebc62814619b26f2f' => 
    array (
      0 => 'smarty\\templates\\templates\\pc\\p5.tpl',
      1 => 1385473198,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '221045291a10c6a0ae6-27988974',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5291a10c710761_50581815',
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
    'coordinate' => 0,
    'name' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5291a10c710761_50581815')) {function content_5291a10c710761_50581815($_smarty_tpl) {?>﻿<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="UTF-8">
<title><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</title>
<link href="templates/front_templ/wedding_theme_021/css/style.css" rel="stylesheet" type="text/css"/>
<link href="templates/front_templ/wedding_theme_021/css/layout.css" rel="stylesheet" type="text/css"/>
<link rel="icon" href="templates/front_templ/wedding_theme_021/images/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="templates/front_templ/wedding_theme_021/images/favicon.ico" type="image/x-icon"/>
<link href="css/prettyPhoto.css" rel="stylesheet" />
<script src="templates/front_templ/wedding_theme_021/js/jquery.min.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_021/js/scripts.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_021/js/switcher.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_021/js/forms.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_021/js/uScroll.js" type="text/javascript"></script>
<script src="templates/front_templ/wedding_theme_021/js/uCarousel.js" type="text/javascript"></script>
<script src="scripts/jquery.prettyPhoto.js"></script>
<!--[if lt IE 8]>
  <div class='alc' style=' clear: both; text-align:center; position: relative; z-index:9999;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
   </a>
 </div>
<![endif]-->
<!--[if lt IE 9]><script src="templates/front_templ/wedding_theme_021/js/html5.js" type="text/javascript"></script><![endif]-->
<!--[if IE]><link href="templates/front_templ/wedding_theme_021/css/ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body>
<div id="gspinner" class="spinner"></div>
<div id="glob" style="background-image:url(templates/front_templ/wedding_theme_021/images/body.gif)">
  <header>
    <h1><a href="#!/splash"><img src="templates/front_templ/wedding_theme_021/images/logo.png" alt=""/></a></h1>
    <span class="slogan f11 white upc" style="color:#7b7b7b;font-size:16px"><?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
</span> </header>
  <nav>
    <table id="nav">
      <tr>
        <td class="frst"><div><a href="#!/about" >喜帖<span>真诚地邀请您一同见证我们的幸福</span></a></div></td>
        <td><div><a href="#!/services" >照片<span>定格幸福瞬间</span></a></div></td>
        <td><div><a href="#!/solutions">故事<span>讲述我们的罗曼史</span></a></div></td>
        <td><div><a href="#!/clients">地图<span>结婚地点</span></a></div></td>
        <td><div><a href="#!/support">回执<span>留下您对我们的祝福吧！</span></a></div></td>
      </tr>
    </table>
  </nav>
  <article id="content" style="
filter:alpha(opacity=70); 
-moz-opacity:0.7; 
opacity:0.7;" >
    <ul>
      <li id="about">
        <h2>真诚的邀请</h2>
        <div class=" scroll1 p2">
          <div>
            <p class="bold upc p1"><?php echo $_smarty_tpl->tpl_vars['man']->value;?>
 & <?php echo $_smarty_tpl->tpl_vars['women']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['mini_time']->value;?>
 </p>
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
          </div>
        </div>
      </li>
      <li id="services">
        <h2>爱的印象
                </h2>
        <div class="scroll scroll2">
          <div>
            <div class="img-box-set" id="piclist">
           	 <dl>
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
				
				    <?php if ($_smarty_tpl->getVariable('smarty')->value['section']['customer']['iteration']%2==0){?>
				        <dd>
			                <a href="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" rel="prettyPhoto[gallery1]" style="width:220px;display:block;text-align:center; margin:5px; border:3px solid #fff; overflow:hidden;">
			                <img src="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" style="width:100%;height:auto;margin:0 auto; display:block;"/>
			                </a>
		                </dd>
				    	 </dl>
                          <dl>
				    <?php }else{ ?>
				    	 <dt>
			                <a href="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" rel="prettyPhoto[gallery1]" style="width:220px;display:block;text-align:center; margin:5px; border:3px solid #fff; overflow:hidden;">
			                <img src="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
" style="width:100%;height:auto;margin:0 auto; display:block;"/>
			                </a>
		                </dt>
				    <?php }?> 
				<?php endfor; endif; ?>
                </dl>
                                    
            </div>
          </div>
        </div>
      </li>
      <li id="solutions">
        <h2><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h2>
        <div class="scroll p2" style=" height:400px;">
          <div><p><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</p></div>
        </div>
      </li>
      <li id="clients">
        <h2>婚礼地点&nbsp;&nbsp;
		<?php echo $_smarty_tpl->tpl_vars['adress']->value;?>

		</a>
		</h3>
        <div id="container" style="border:3px solid #fff; width:500px; height:400px; display:block; margin:0 auto;"> 
          <div>
          </div>
        </div>
      </li>
      <li id="support">
        <h2>留言祝福</h2>
        <form id="form1">
          <fieldset class="col-1">
            <label class="name">
              <input type="text"  placeholder="姓名:" id="guest" class="input marNone">
            </label>
            <label class="email">
              <table>
              <tr>
              <td>参加婚礼:&nbsp;&nbsp;</td>
              <td>
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
              </td>
		      </tr>
		      </table>
            </label>
          </fieldset>
          <fieldset class="col-2">
            <label class="message">
              <textarea id="message"  placeholder="留言:"></textarea>
            </label>
            <br class="clear">
            <div class="btns"><span id="bi_msg" style="font-size:12px;margin-top:25px;color:red;text-align:right;line-height:40px"></span><span><a class="button" id="btn_backinfo">发送留言</a></span></div>
          </fieldset>
        </form>
        
        <div class="clear"></div>
      </li>
    </ul>
  </article>
  <footer>
    <ul class="soc-ico">
      <p style="line-height:20px;padding-right:10px">
  			<span style="display:inline">	
	<object type="application/x-shockwave-flash"		data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1" width="19" height="20"		id="dewplayer-mini">		<param name="wmode" value="transparent">		<param name="movie"			value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1">		<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1" width="20"			height="20" wmode="transparent"></embed>	</object></span>	
	</p>
    </ul>
  </footer>
</div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=1.3"></script>
<script type="text/javascript">
var user_id = 33;
$(function (){
	var biz_name = '';
	var biz_url = '';
	$("#piclist a[rel^='prettyPhoto']").prettyPhoto({social_tools:'<a href="' + biz_url + '" target="_blank" style="font-size:12px;color:white">' + biz_name + '</a>',animation_speed:'normal',theme:'dark_square',slideshow:5000, autoplay_slideshow: false});
});


var map = new BMap.Map("container");
map.enableScrollWheelZoom();

var x,y;
var marker = '';

$(function (){
		map.centerAndZoom(new BMap.Point(<?php echo $_smarty_tpl->tpl_vars['coordinate']->value;?>
), 16);
		map.addControl(new BMap.NavigationControl());  

		map.removeOverlay(marker);
		var pt = new BMap.Point(<?php echo $_smarty_tpl->tpl_vars['coordinate']->value;?>
);
		marker = new BMap.Marker(pt); 
		map.addOverlay(marker); 
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
</script><div style="display:none"> 
<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0b49c04696fdc8117195c0732c080ea4' type='text/javascript'%3E%3C/script%3E"));
</script> 
</div>
</body>
</html>
<?php }} ?>