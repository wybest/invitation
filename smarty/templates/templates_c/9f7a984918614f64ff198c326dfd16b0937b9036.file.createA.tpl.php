<?php /* Smarty version Smarty-3.1.13, created on 2013-11-22 14:51:36
         compiled from "smarty\templates\templates\createA.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20759526a3fe36278a4-36266137%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9f7a984918614f64ff198c326dfd16b0937b9036' => 
    array (
      0 => 'smarty\\templates\\templates\\createA.tpl',
      1 => 1385130877,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20759526a3fe36278a4-36266137',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_526a3fe36940c9_88856686',
  'variables' => 
  array (
    'message' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_526a3fe36940c9_88856686')) {function content_526a3fe36940c9_88856686($_smarty_tpl) {?>
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
                                            <td height="0" colspan="2">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                账户名
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="Crm_Control_loginname" maxlength="100" value="" name="name">
                                                <input type="text" style="width:130px;" id="advert" maxlength="100" value="" name="advert">
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