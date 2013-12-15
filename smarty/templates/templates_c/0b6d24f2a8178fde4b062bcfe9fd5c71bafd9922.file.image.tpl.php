<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 12:09:59
         compiled from "smarty/templates/templates/image.tpl" */ ?>
<?php /*%%SmartyHeaderCode:70268593652ad98d18dac90-52138969%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0b6d24f2a8178fde4b062bcfe9fd5c71bafd9922' => 
    array (
      0 => 'smarty/templates/templates/image.tpl',
      1 => 1387109391,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '70268593652ad98d18dac90-52138969',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad98d1920cc5_64681571',
  'variables' => 
  array (
    'message' => 0,
    'target' => 0,
    'images' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad98d1920cc5_64681571')) {function content_52ad98d1920cc5_64681571($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['message']->value!=''){?>
<div class="alert alert-danger"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</div>
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
      <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
      <div class="alert alert-danger">操作失败，重新提交</div>  
<?php }?> 
<div class="alert alert-success">（建议6张相片最合适,相片要求为竖版 500*750）相片大小限制在150kb内，手机屏幕小，打开是很清晰的，同时手机打开速度会很快,，压缩图片去<a href="http://xiuxiu.web.meitu.com/">美图秀秀网页版</a> </div>
<div style="">
<form class="form-inline" role="form" action="save_photo.php" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">相册图片（建议6张最合适）</label>
    <input class="input-file" type="file" name="upfile">
  </div>
 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="image">
  <button type="submit" class="btn btn-primary">提 交</button>
</form>
</div>
<div style="margin-top: 20px;width: 100%;">
<?php if ($_smarty_tpl->tpl_vars['images']->value!="none"){?>
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

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 190px; height: 180px;" class="img-thumbnail"
	src="marryimg/<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
">
</div>	
<div style="text-align: center;">
<a onclick="return confirm('确认要删除?');" href="delete_photo.php?delete=true&type=image&image=<?php echo $_smarty_tpl->tpl_vars['images']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
"><img style="" src="img/delete.png" alt="删除"></a>

</div>
</div>

	&nbsp;
&nbsp; &nbsp;
    <?php if ($_smarty_tpl->getVariable('smarty')->value['section']['customer']['iteration']%3==0){?>
    	</div>
		<p>&nbsp;</p>
		<div style="margin-top: 200px;width: 100%;">
    <?php }?> 
<?php endfor; endif; ?>
<?php }?>

</div>
<?php }} ?>