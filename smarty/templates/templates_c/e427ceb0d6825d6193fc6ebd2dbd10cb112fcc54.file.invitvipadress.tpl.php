<?php /* Smarty version Smarty-3.1.13, created on 2013-12-04 07:01:55
         compiled from "smarty\templates\templates\invitvipadress.tpl" */ ?>
<?php /*%%SmartyHeaderCode:69885268f1672bf184-83766722%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e427ceb0d6825d6193fc6ebd2dbd10cb112fcc54' => 
    array (
      0 => 'smarty\\templates\\templates\\invitvipadress.tpl',
      1 => 1386140479,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '69885268f1672bf184-83766722',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5268f16730f0a7_42616529',
  'variables' => 
  array (
    'message' => 0,
    'vip_array' => 0,
    'host' => 0,
    'user_id' => 0,
    'name' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5268f16730f0a7_42616529')) {function content_5268f16730f0a7_42616529($_smarty_tpl) {?>
<div id="showtext" style="margin: auto; width: 99%;margin-top: 50px;">

          	<form class="form-inline" role="form" ACTION="save_vip.php" METHOD="POST" id="form1" name="form1">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">首页图片</label>
    <input  class="form-control" id="name" name="vip_name" type="text"  placeholder="输入 亲爱的XX" />
  </div>
  <button type="submit" class="btn btn-primary">提 交</button>（点击二维码，打开电脑版请柬）
</form>

<?php if ($_smarty_tpl->tpl_vars['message']->value!=''){?>
<div class="alert alert-danger"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</div>
<?php }?>
<div style="margin-top: 20px;">

<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['name'] = 'customer';
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['vip_array']->value) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
<a target="_blank" href="http://<?php echo $_smarty_tpl->tpl_vars['host']->value;?>
pc.php?name=<?php echo $_smarty_tpl->tpl_vars['user_id']->value;?>
@<?php echo $_smarty_tpl->tpl_vars['vip_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->id;?>
"><img src='http://chart.apis.google.com/chart?cht=qr&chs=150x150&choe=UTF-8&chld=L|4&chl=http://<?php echo $_smarty_tpl->tpl_vars['host']->value;?>
phone.php?name=<?php echo $_smarty_tpl->tpl_vars['user_id']->value;?>
@<?php echo $_smarty_tpl->tpl_vars['vip_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->id;?>
' width='120' height='120'  /></a>
</div>	
<div style="text-align: center;">
<a target="_blank" href="http://<?php echo $_smarty_tpl->tpl_vars['host']->value;?>
pc.php?name=<?php echo $_smarty_tpl->tpl_vars['user_id']->value;?>
@<?php echo $_smarty_tpl->tpl_vars['vip_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->id;?>
" class="btn btn-primary">打开电脑请柬</a>
</div>
<div style="text-align: center;">
<span><?php echo $_smarty_tpl->tpl_vars['vip_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->vip_name;?>
</span>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;
    <?php if ($_smarty_tpl->getVariable('smarty')->value['section']['customer']['iteration']%6==0){?>
    	</div>
		<p>&nbsp;</p>
		<div>
    <?php }?> 
<?php endfor; endif; ?>
</div>

        <script type="text/javascript">
          function create(){
            var name = document.getElementById('name').value;
            //thisURL = document.URL;
            var url = "http://<?php echo $_smarty_tpl->tpl_vars['host']->value;?>
phone.php?name=<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
-"+encodeURIComponent(name);
            document.getElementById('imgs1').innerHTML = "<img src='http://chart.apis.google.com/chart?cht=qr&chs=150x150&choe=UTF-8&chld=L|4&chl=" + url + "' width='150' height='150' alt='网址URL 二维码生成' />";
            document.getElementById('url1').innerHTML = url;
          }
          </script>         
 </div>         <?php }} ?>