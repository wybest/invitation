
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
                                            <span>{#$message#}</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="10" colspan="2" align="center">
                                            <span>{#if $is_pay == 0 #}未付款{#else#}已付款{#/if#}</span>
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
                                                <input type="text" style="width:130px;" id="Crm_Control_loginname" maxlength="100" value="{#$name#}" name="name">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                广告
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="advert" maxlength="100" value="{#$advert#}" name="advert">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                               字体
                                            </td>
                                            <td align="left">
                                                <input type="text" style="width:130px;" id="advert" maxlength="100" value="{#$font_family#}" name="font_family">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                开通手机版
                                            </td>
                                            <td align="left">
                                                <select name="isphone">
                                                	<option {#if $is_phone == 0 #}selected="selected"{#/if#} value="0">关闭</option>
                                                	<option {#if $is_phone == 1 #}selected="selected"{#/if#} value="1">开通</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="font_yonghu_12px">
                                                开通电脑版
                                            </td>
                                            <td align="left">
                                            	<select name="ispc">{#$is_pc#}
                                                	<option {#if $is_pc == 0 #}selected="selected"{#/if#} value="0">关闭</option>
                                                	<option {#if $is_pc == 1 #}selected="selected"{#/if#} value="1">开通</option>
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
