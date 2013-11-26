<?php /* Smarty version Smarty-3.1.13, created on 2013-11-26 14:18:28
         compiled from "smarty\templates\templates\mould_phone.tpl" */ ?>
<?php /*%%SmartyHeaderCode:160845290bf15560fb3-86390195%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7223407d645762bb11704dd8600fff1f311abb1c' => 
    array (
      0 => 'smarty\\templates\\templates\\mould_phone.tpl',
      1 => 1385475504,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '160845290bf15560fb3-86390195',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5290bf155f25c2_90774620',
  'variables' => 
  array (
    'target' => 0,
    'message' => 0,
    'mould' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5290bf155f25c2_90774620')) {function content_5290bf155f25c2_90774620($_smarty_tpl) {?>﻿<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
     <div class="alert alert-danger">操作失败，重新提交</div> 
<?php }?> 
<?php if ($_smarty_tpl->tpl_vars['message']->value){?>  
     <div class="alert alert-success"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</div>
<?php }?>
<form class="form-horizontal"  ACTION="save_phone_mould.php"
		METHOD="POST" id="form1" name="form1">
<input type="hidden" name="insert" value="insert" />		
<div style="margin-top: 20px;width: 800px;">

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/a.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="典雅古风" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="典雅古风"){?> checked="checked" <?php }?>/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/b.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="粉红浪漫" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="粉红浪漫"){?> checked="checked" <?php }?>/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/c.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="金色永恒" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="金色永恒"){?> checked="checked" <?php }?>/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/d.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="蓝色梦幻" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="蓝色梦幻"){?> checked="checked" <?php }?>/>
</div>
</div>

</div>

<div style="margin-top: 200px;width: 800px;">

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/e.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="入场券" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="入场券"){?> checked="checked" <?php }?>/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/f.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="桃色经典" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="桃色经典"){?> checked="checked" <?php }?>/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/g.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="正港台味" <?php if ($_smarty_tpl->tpl_vars['mould']->value=="正港台味"){?> checked="checked" <?php }?>/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">

<div style="text-align: center;width: 170px; height: 265px;margin-top:80px;">
<button type="submit" class="btn btn-primary">提交手机模板</button>
</div>

</div>


</div>
</form><?php }} ?>