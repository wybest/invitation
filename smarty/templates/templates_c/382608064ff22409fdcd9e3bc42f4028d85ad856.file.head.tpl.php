<?php /* Smarty version Smarty-3.1.13, created on 2013-12-08 10:13:54
         compiled from "smarty\templates\templates\head.tpl" */ ?>
<?php /*%%SmartyHeaderCode:19998525cab2ae70af0-54031275%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '382608064ff22409fdcd9e3bc42f4028d85ad856' => 
    array (
      0 => 'smarty\\templates\\templates\\head.tpl',
      1 => 1386497631,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19998525cab2ae70af0-54031275',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_525cab2b0062f9_79306233',
  'variables' => 
  array (
    'name' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_525cab2b0062f9_79306233')) {function content_525cab2b0062f9_79306233($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>手机微信电子请帖</title>
<meta name="keywords" content="手机微信电子请帖" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="intro/introjs.min.css"/>
  <script type="text/javascript" src="intro/intro.min.js"></script>

  <script type="text/javascript" src="js/jQuery1.7.2.js"></script>

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>

<div id="templatemo_wrapper_outter">

	<div id="templatemo_wrapper_inner">
    
    <div id="templatemo_menu">
    
        <ul style="width: 90%">
				<style>
				.J_login_before{background:#2C2C2C;border: 1px solid #171717;width:24px;padding:0 5px 0 25px;position:relative;height:20px;line-height:20px;}
				.J_login_after{background:#2C2C2C;border: 1px solid #171717;padding:0 5px 0 22px;position:relative;height:20px;line-height:20px;}
				.J_login i{background:url(http://img03.taobaocdn.com/tps/i3/T1bPmiXjdNXXbbz3Pc-27-77.png) 0 -62px no-repeat;display:inline-block;width:13px;height:13px;vertical-align:middle;position:absolute;top:3px;left:5px;}
				.J_login a{color:#717171 !important;}
				.J_login a:hover{color:#fff !important;}
                </style>
					<li style="float:right;margin-top:30px">
									<div class="J_login J_login_after"><i></i><span style="color: white;"><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</span> </div></li>
				</ul>  	
    
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_content_wrapper">
    
    	<div id="templatemo_sidebar_wrapper">
    
            <div id="templatemo_sidebar_top"></div>
            <div id="templatemo_sidebar">
            
                <h2>请柬信息设置</h2>
                
                <ul class="categories_list">
                    <li><a href="invit_info.php">请柬内容设置</a></li>
                    <li><a href="mould_phone.php">手机请柬风格设置</a></li>
                    <li><a href="mould_pc.php">电脑请柬风格设置</a></li>
                    <li><a href="coordinate.php">请柬坐标设置</a></li>
                    <li><a href="big_photo.php">请柬封面设置</a></li>
                    <li><a href="image.php">请柬相册设置</a></li>
                </ul>
                
                <div class="cleaner_h30"></div>
                
                <h2>请柬二维码地址</h2>
            
               <ul class="categories_list">
                    <li><a href="invitadress.php">请柬通用地址</a></li>
                    <li><a href="invitvipadress.php">请柬贵宾地址</a></li>
                </ul>
                
                <div class="cleaner_h30"></div>
                
                 <h2>亲友回函</h2>
            
               <ul class="categories_list">
                    <li><a href="receipt.php">查看回函</a></li>
                </ul>
                
                <div class="cleaner_h10"></div>
                
            </div>
            <div id="templatemo_sidebar_bottom"></div>
        
        </div>
    
		<div id="templatemo_content">
		
	<?php }} ?>