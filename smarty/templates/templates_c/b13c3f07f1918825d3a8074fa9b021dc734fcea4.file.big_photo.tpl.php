<?php /* Smarty version Smarty-3.1.13, created on 2013-12-08 08:06:24
         compiled from "smarty\templates\templates\big_photo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:24784525e8812651af3-23757435%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b13c3f07f1918825d3a8074fa9b021dc734fcea4' => 
    array (
      0 => 'smarty\\templates\\templates\\big_photo.tpl',
      1 => 1386145062,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24784525e8812651af3-23757435',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_525e8812688af5_64558634',
  'variables' => 
  array (
    'message' => 0,
    'target' => 0,
    'bigimage' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_525e8812688af5_64558634')) {function content_525e8812688af5_64558634($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['message']->value!=''){?>
<div class="alert alert-danger"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</div>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
      <div class="alert alert-danger">操作失败，重新提交</div>   
<?php }?> 
<div class="alert alert-success">（相片要求为横版）相片大小限制在150kb内，手机屏幕小，打开是很清晰的，同时手机打开速度会很快，压缩图片去<a href="http://xiuxiu.web.meitu.com/">美图秀秀网页版</a> </div>
<div id="showtext" class="editor active" style="margin: auto;width: 710px;">
<div style="float: left;padding-top: 90px;">
<form class="form-inline" role="form" action="save_photo.php" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">首页图片</label>
    <input class="input-file" type="file" name="upfile">
  </div>
 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="big">
  <button type="submit" class="btn btn-primary">提 交</button>
</form>
</div>
<?php if ($_smarty_tpl->tpl_vars['bigimage']->value!="none"){?>  
<div style="float: left;padding-left: 100px;">
<div style="margin-top: 20px;">
<img style="width: 210px; height: 200px;float: " class="img-thumbnail"
	src="http://bcs.duapp.com/marryimg/<?php echo $_smarty_tpl->tpl_vars['bigimage']->value;?>
">	
</div>	
<div style="text-align: center;">
<a onclick="return confirm('确认要删除?');" href="delete_photo.php?delete=true&type=big"><img style="" src="img/delete.png" alt="删除"></a>

</div>
</div>
<?php }?>

<div class="clear"></div>
</div>
<?php }} ?>