
<html xmlns="http://www.w3.org/1999/xhtml"> 
	<HEAD>
		<title></title>
	 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel="stylesheet" type="text/css" href="login.css">
 	
<script type="text/javascript">
function FormCheck()
{
if (document.getElementById('name').value=="")
	{
	  alert("对不起，名字不能为空")
	  document.getElementById('name').focus();
	  return (false);
	 }
if (document.getElementById('password').value=="")
	{
	  alert("对不起，密码不能为空")
	  document.getElementById('password').focus();
	  return (false);
	 }
if (document.getElementById('password').value!=document.getElementById('repassword').value)
	{
	  alert("对不起，两次密码不一致")
	  document.getElementById('repassword').focus();
	  return (false);
	 }
}

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
                                <form action="regist.php" id="form1" method="post">
                                    <table width="95%" cellspacing="0" cellpadding="0" border="0" align="center">
                                        <tbody><tr>
                                            <td height="10" colspan="2" align="center">
                                            <span>{#$message#}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="0" colspan="2">
                                            （中文英文全部支持哦）
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                帐户名：
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="name" maxlength="100" value="taotao4629" name="name">
                                                <span style="color:Red;display:none;" id="Crm_Control_RequiredFieldValidator1">必添</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                密 码：
                                            </td>
                                            <td align="left">
                                                <input type="password" style="width:130px;" id="password" maxlength="16" name="password">
                                                <span style="color:Red;display:none;" id="Crm_Control_RequiredFieldValidator2">必添</span>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                重 复 密 码：
                                            </td>
                                            <td align="left">
                                                <input type="password" style="width:130px;" id="repassword" maxlength="16" name="repassword">
                                                <span style="color:Red;display:none;" id="Crm_Control_RequiredFieldValidator2">必添</span>
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
                                                            <input onClick="javascript:return FormCheck();" type="submit" class="ButtonBL" id="Crm_Control_btSubmit"  value="注册" name="Crm_Control$btSubmit">
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
