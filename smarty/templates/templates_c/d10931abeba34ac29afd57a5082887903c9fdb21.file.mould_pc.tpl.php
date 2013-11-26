<?php /* Smarty version Smarty-3.1.13, created on 2013-11-26 14:19:05
         compiled from "smarty\templates\templates\mould_pc.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1122052915a07d65f82-95661430%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd10931abeba34ac29afd57a5082887903c9fdb21' => 
    array (
      0 => 'smarty\\templates\\templates\\mould_pc.tpl',
      1 => 1385475542,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1122052915a07d65f82-95661430',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52915a07e261f1_39870822',
  'variables' => 
  array (
    'target' => 0,
    'message' => 0,
    'pcmould' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52915a07e261f1_39870822')) {function content_52915a07e261f1_39870822($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
     <div class="alert alert-danger">操作失败，重新提交</div> 
<?php }?> 
<?php if ($_smarty_tpl->tpl_vars['message']->value){?>  
     <div class="alert alert-success"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</div>
<?php }?>
<form class="form-horizontal"  ACTION="save_pc_mould.php"
		METHOD="POST" id="form1" name="form1">
<input type="hidden" name="insert" value="insert" />		
<div style="margin-top: 20px;width: 100%;">

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p1.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p1" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p1"){?> checked="checked" <?php }?>/>
</div>
</div>


<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p2.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p2" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p2"){?> checked="checked" <?php }?>/>
</div>
</div>


<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p3.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p3" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p3"){?> checked="checked" <?php }?>/>
</div>
</div>


<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p4.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p4" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p4"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p5.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p5" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p5"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p6.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p6" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p6"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p7.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p7" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p7"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p8.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p8" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p8"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p9.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p9" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p9"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p10.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p10" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p10"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p11.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p11" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p11"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p12.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p12" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p12"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p13.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p13" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p13"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p14.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p14" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p14"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p15.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p15" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p15"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p16.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p16" <?php if ($_smarty_tpl->tpl_vars['pcmould']->value=="p16"){?> checked="checked" <?php }?>/>
</div>
</div>

<div style="float: left;">

<div style="text-align: center;width: 170px; height: 265px;margin-top:80px;">
<button type="submit" class="btn btn-primary">提交电脑模板</button>
</div>

</div>

</div>


</form><?php }} ?>