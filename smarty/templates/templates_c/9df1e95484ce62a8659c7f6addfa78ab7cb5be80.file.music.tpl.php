<?php /* Smarty version Smarty-3.1.13, created on 2013-12-11 09:07:06
         compiled from "smarty\templates\templates\music.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2786152a82b3a26da52-42950332%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9df1e95484ce62a8659c7f6addfa78ab7cb5be80' => 
    array (
      0 => 'smarty\\templates\\templates\\music.tpl',
      1 => 1386514922,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2786152a82b3a26da52-42950332',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'target' => 0,
    'mp3list' => 0,
    'music' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52a82b3a322c46_87907509',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52a82b3a322c46_87907509')) {function content_52a82b3a322c46_87907509($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
     <div class="alert alert-danger">操作失败，重新提交</div> 
<?php }?>  


 <link rel="stylesheet" href="editor/jquery.wysiwyg.css" type="text/css" media="screen" />
  <script type="text/javascript" src="editor/jquery.wysiwyg.js"></script>
  <script type="text/javascript">
  $(function()
  {
      $('#message').wysiwyg();
  });
  $('#lasttime').tooltip('show')
  </script>


<form class="form-horizontal" role="form" ACTION="save_music.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">背景音乐</label>
    <div class="col-sm-10">
      <select class="form-control" name="music" onchange="checkStyle()">
		<?php echo $_smarty_tpl->tpl_vars['mp3list']->value;?>

		<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['name'] = 'customer';
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['mp3list']->value) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
			<option <?php if ($_smarty_tpl->tpl_vars['music']->value==$_smarty_tpl->tpl_vars['mp3list']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]){?>selected="selected"<?php }?> value ="<?php echo $_smarty_tpl->tpl_vars['mp3list']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
"><?php echo $_smarty_tpl->tpl_vars['mp3list']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
</option>
		<?php endfor; endif; ?>
		
		</select>
    </div>
  </div>
        <p style="line-height:20px">
  			<span style="display:inline">	
	<object type="application/x-shockwave-flash"		data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1" width="19" height="20"		id="dewplayer-mini">		<param name="wmode" value="transparent">		<param name="movie"			value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1">		<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/<?php echo $_smarty_tpl->tpl_vars['music']->value;?>
&amp;autostart=1&amp;autoreplay=1" width="20"			height="20" wmode="transparent"></embed>	</object></span>	</p>
</form>
<script language="javascript" type="text/javascript">
function checkStyle()
{
	form1.submit();
}
</script><?php }} ?>