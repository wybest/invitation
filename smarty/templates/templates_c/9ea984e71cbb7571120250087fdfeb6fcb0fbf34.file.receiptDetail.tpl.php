<?php /* Smarty version Smarty-3.1.13, created on 2013-10-31 14:50:39
         compiled from "smarty\templates\templates\receiptDetail.tpl" */ ?>
<?php /*%%SmartyHeaderCode:789952692457e1f228-71205417%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9ea984e71cbb7571120250087fdfeb6fcb0fbf34' => 
    array (
      0 => 'smarty\\templates\\templates\\receiptDetail.tpl',
      1 => 1383230710,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '789952692457e1f228-71205417',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52692457e8f335_10473078',
  'variables' => 
  array (
    'shujuDO' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52692457e8f335_10473078')) {function content_52692457e8f335_10473078($_smarty_tpl) {?> <table width="65%" border="1" align="center">
  <tr>
    <td colspan="2" align="left">婚庆回函详情</td>
  </tr>
  <tr>
    <td align="left" width="27%">姓名</td>
    <td align="left" width="73%"><?php echo $_smarty_tpl->tpl_vars['shujuDO']->value->name;?>
</td>
  </tr>
  <tr>
    <td align="left" width="27%">是否参加</td>
    <td align="left" width="73%"><?php echo $_smarty_tpl->tpl_vars['shujuDO']->value->pnum;?>
</td>
  </tr>
  <tr>
    <td align="left" width="27%">回函时间</td>
    <td align="left" width="73%"><?php echo $_smarty_tpl->tpl_vars['shujuDO']->value->time;?>
</td>
  </tr>
  <tr>
    <td width="27%" height="163" align="left">祝福语</td>
    <td align="left" width="73%"><?php echo $_smarty_tpl->tpl_vars['shujuDO']->value->bless;?>
</td>
  </tr>
</table><?php }} ?>