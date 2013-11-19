<?php /* Smarty version Smarty-3.1.13, created on 2013-10-26 08:33:15
         compiled from "smarty\templates\templates\mp3.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5257526b7e4bb4f1d5-40666924%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4e4d0cd5122e76cd85bcdc82bbb800ba46f36b9d' => 
    array (
      0 => 'smarty\\templates\\templates\\mp3.tpl',
      1 => 1382775892,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5257526b7e4bb4f1d5-40666924',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_526b7e4bb937f8_37871055',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_526b7e4bb937f8_37871055')) {function content_526b7e4bb937f8_37871055($_smarty_tpl) {?>
<div id="showtext" class="editor active" style="margin: auto;width: 710px;">
<div style="float: left;padding-top: 90px;">
<form action="save_mp3.php" method="post" enctype="multipart/form-data">
            mp3：
            <input type="file" name="upfile">
            <input class="btn btn-primary btn-small" type="submit" value="提 交">
			 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="big">
            </form>
</div>

<div class="clear"></div>
</div>
<?php }} ?>