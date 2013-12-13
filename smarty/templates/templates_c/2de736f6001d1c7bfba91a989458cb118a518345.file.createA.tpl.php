<?php /* Smarty version Smarty-3.1.13, created on 2013-12-13 13:19:38
         compiled from "smarty/templates/templates/createA.tpl" */ ?>
<?php /*%%SmartyHeaderCode:26688516552ab096aab1097-84776584%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2de736f6001d1c7bfba91a989458cb118a518345' => 
    array (
      0 => 'smarty/templates/templates/createA.tpl',
      1 => 1386915116,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '26688516552ab096aab1097-84776584',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'message' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ab096aac3af0_85060435',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ab096aac3af0_85060435')) {function content_52ab096aac3af0_85060435($_smarty_tpl) {?>
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
                                    <table width="95%" cellspacing="0" cellpadding="0" border="0" align="center">
                                        <tbody><tr>
                                            <td height="10" colspan="2" align="center">
                                            <span><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</span>
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
                                                <form action="edit_info.php" id="form1" method="post">
                                                <input type="text" style="width:130px;" id="Crm_Control_loginname" maxlength="100"  name="uname">
                                                <input type="submit" class="ButtonBL" id="Crm_Control_btSubmit"  value="查询账户" name="Crm_Control$btSubmit">
                                                 <input type="hidden" name="query" value="query">
                                                </form>
                                            </td>
                                        </tr>
                                    
                                    </tbody></table>
                                </td>
                            </tr>
                        </tbody></table>
                        
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