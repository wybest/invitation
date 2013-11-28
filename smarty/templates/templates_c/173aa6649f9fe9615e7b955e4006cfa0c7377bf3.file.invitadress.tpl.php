<?php /* Smarty version Smarty-3.1.13, created on 2013-11-28 10:36:10
         compiled from "smarty\templates\templates\invitadress.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5887525cab2b035136-59108787%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '173aa6649f9fe9615e7b955e4006cfa0c7377bf3' => 
    array (
      0 => 'smarty\\templates\\templates\\invitadress.tpl',
      1 => 1385484320,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5887525cab2b035136-59108787',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_525cab2b06a9f2_28140782',
  'variables' => 
  array (
    'name' => 0,
    'host' => 0,
    'user_id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_525cab2b06a9f2_28140782')) {function content_525cab2b06a9f2_28140782($_smarty_tpl) {?>


<table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0" id="table1">
	<tbody><tr>
		<td width="20%" valign="top" align="center"></td>
<td width="400" valign="top" align="center" style="padding-top:100;">
           <p><span style="color:#FF0000"><strong><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</strong></span><strong>，您的手机请柬二维码是：</strong> </p>
           <span style="color:#FF0000">（点击二维码，打开电脑版请柬）</span>
      <p><a target="_blank" href="http://<?php echo $_smarty_tpl->tpl_vars['host']->value;?>
pc.php?name=<?php echo $_smarty_tpl->tpl_vars['user_id']->value;?>
@"><img src="http://chart.apis.google.com/chart?cht=qr&amp;chs=300x300&amp;chl=http://<?php echo $_smarty_tpl->tpl_vars['host']->value;?>
phone.php?name=<?php echo $_smarty_tpl->tpl_vars['user_id']->value;?>
@"></a></p>
	  </td>
      <td valign="top" align="left" style="padding-top:93px;">
        <p style="color:#FF0000"><strong>如何发送请柬：</strong></p>
        <p>1. 微信里扫一扫，打开请柬</p>
	    <p>2. 点击微信右上角，选择发送给朋友，或者选择复制链接，通过短信发出去...</p>
        <p>3. 或者将二维码印刷到个性印刷请柬上，请柬信封上...</p>
        <p>4. 或者将二维码通过pc电脑QQ，邮箱发送....</p>
        <p>5. 更多发送方式由您去发掘....</p></td>
  </tr>
</tbody></table>
<?php }} ?>