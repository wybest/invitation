<?php /* Smarty version Smarty-3.1.13, created on 2013-11-26 15:59:55
         compiled from "smarty\templates\templates\createB.tpl" */ ?>
<?php /*%%SmartyHeaderCode:144245294c2496065e5-40952348%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8b4a86cfbaca1e8f1932f18ec7dbb6a6ff9d4de5' => 
    array (
      0 => 'smarty\\templates\\templates\\createB.tpl',
      1 => 1385481591,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '144245294c2496065e5-40952348',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_5294c2496b3cd7_38172183',
  'variables' => 
  array (
    'message' => 0,
    'is_pay' => 0,
    'name' => 0,
    'advert' => 0,
    'font_family' => 0,
    'is_phone' => 0,
    'is_pc' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5294c2496b3cd7_38172183')) {function content_5294c2496b3cd7_38172183($_smarty_tpl) {?>
<html xmlns="http://www.w3.org/1999/xhtml"> 
	<HEAD>
		<title></title>
	 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel="stylesheet" type="text/css" href="login.css">
 	
</script>
</HEAD>
<body>
<table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" class="dl_bg">
    <tbody><tr>
        <td class="dlall">
            <table cellspacing="0" cellpadding="0" align="center" class="dl_table" valign="center">
                <tbody><tr>
                    <td>
                        <div class="logo_tu">
<table width="100%" height="13" border="0" cellpadding="0" cellspacing=0>
 <tr>
 <td width="20%" valign="top" align="right">
 	<!--  <img style="margin-left: 20px;" width="60px" height="60px" src="images/anchor_g.gif" border="0"/>-->
</td>
<td width="80%"  valign="middle" align="left">
 	<span style="font-size: 15;"></span>
</td>
</tr>
</table>
                        </div>
                    </td>
                    <td class="dl_l">
                    </td>
                    <td align="center" class="dl_m">
                        <table width="405px" cellspacing="0" cellpadding="0" border="0" align="center" class="table_line4">
                            <tbody><tr>
                                <td valign="top">
                                <form action="createA.php" id="form1" method="post">
                                    <table width="95%" cellspacing="0" cellpadding="0" border="0" align="center">
                                        <tbody><tr>
                                            <td height="10" colspan="2" align="center">
                                            <span><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="10" colspan="2" align="center">
                                            <span><?php if ($_smarty_tpl->tpl_vars['is_pay']->value==0){?>未付款<?php }else{ ?>已付款<?php }?></span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="0" colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                账户名
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="Crm_Control_loginname" maxlength="100" value="<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
" name="name">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                广告
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="advert" maxlength="100" value="<?php echo $_smarty_tpl->tpl_vars['advert']->value;?>
" name="advert">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                               字体
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="advert" maxlength="100" value="<?php echo $_smarty_tpl->tpl_vars['font_family']->value;?>
" name="font_family">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                开通手机版
                                            </td>
                                            <td align="left">
                                                <select name="isphone">
                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_phone']->value==0){?>selected="selected"<?php }?> value="0">关闭</option>
                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_phone']->value==1){?>selected="selected"<?php }?> value="1">开通</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                开通电脑版
                                            </td>
                                            <td align="left">
                                            	<select name="ispc"><?php echo $_smarty_tpl->tpl_vars['is_pc']->value;?>

                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_pc']->value==0){?>selected="selected"<?php }?> value="0">关闭</option>
                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_pc']->value==1){?>selected="selected"<?php }?> value="1">开通</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                                    <tbody><tr>
                                                        <td width="50%">
                                                            &nbsp;
                                                        </td>
                                                        <td width="50%" align="left">
                                                            <input type="submit" class="ButtonBL" id="Crm_Control_btSubmit"  value="创建账户" name="Crm_Control$btSubmit">
                                                        </td>
                                                    </tr>
                                                </tbody></table>
                                            </td>
                                        </tr>
                                       
                                    </tbody></table>
                                </td>
                            </tr>
                        </tbody></table>
                         </form>
                    </td>
                    <td class="dl_r">
                    </td>
            </tr></tbody></table>
        </td>
    </tr>
</tbody></table>
</body>
</HTML>
<?php }} ?>