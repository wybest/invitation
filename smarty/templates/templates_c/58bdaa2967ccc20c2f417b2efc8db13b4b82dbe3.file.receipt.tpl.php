<?php /* Smarty version Smarty-3.1.13, created on 2013-12-08 10:04:40
         compiled from "smarty\templates\templates\receipt.tpl" */ ?>
<?php /*%%SmartyHeaderCode:51905260d8c6b8e578-90187008%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '58bdaa2967ccc20c2f417b2efc8db13b4b82dbe3' => 
    array (
      0 => 'smarty\\templates\\templates\\receipt.tpl',
      1 => 1386496997,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '51905260d8c6b8e578-90187008',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5260d8c6c898c2_19968325',
  'variables' => 
  array (
    'shuju_array' => 0,
    'up' => 0,
    'next' => 0,
    'end' => 0,
    'page' => 0,
    'count' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5260d8c6c898c2_19968325')) {function content_5260d8c6c898c2_19968325($_smarty_tpl) {?><table align="center" border="1" width="100%">
    <tr>
      <td align="center">姓名</td>
      <td align="center">是否参加</td>
      <td align="center">回复时间</td>
      <td align="center">详情</td>
    </tr>
<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['name'] = 'customer';
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['shuju_array']->value) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
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
      <tr>
        <td align="center" ><a href=""><?php echo $_smarty_tpl->tpl_vars['shuju_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->name;?>
</a></td>
        <td align="center" ><?php echo $_smarty_tpl->tpl_vars['shuju_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->pnum;?>
</td>
        <td align="center"><?php echo $_smarty_tpl->tpl_vars['shuju_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->time;?>
</td>
        <td><a href="receiptDetail.php?id=<?php echo $_smarty_tpl->tpl_vars['shuju_array']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]->id;?>
">详情</a></td>
      </tr>
<?php endfor; endif; ?>
  </table>
  <br>
  <table border="0" width="100%">
    <tr>
      <td><a href="receipt.php?page_nm=1">第一页</a></td>
      <td><a href="receipt.php?page_nm=<?php echo $_smarty_tpl->tpl_vars['up']->value;?>
">前一页</a></td>
      <td><a href="receipt.php?page_nm=<?php echo $_smarty_tpl->tpl_vars['next']->value;?>
">下一个</a></td>
      <td><a href="receipt.php?page_nm=<?php echo $_smarty_tpl->tpl_vars['end']->value;?>
">最后一页</a></td> 
      <td>第<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
页    (总共 <?php echo $_smarty_tpl->tpl_vars['count']->value;?>
人,共<?php echo $_smarty_tpl->tpl_vars['end']->value;?>
页)</td>
    </tr>
  </table>
<?php }} ?>