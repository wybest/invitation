
<table class="table table-hover">
    <tr>
        <td align="center">管理员名字</td>
        <td align="center">密码</td>
        <td align="center">查看</td>
        <td align="center">去结算</td>
    </tr>
    {#section name=customer loop=$shuju_array #}
    <tr>
        <td align="center" >{#$shuju_array[customer]->admin_name#}</td>
        <td align="center" >{#$shuju_array[customer]->admin_password#}</td>
        <td align="center"><a href="super_power_vip_user.php?ad_name={#$shuju_array[customer]->admin_name#}">查看vip</a></td>
        <td align="center"><a href="super_power_confirm.php?ad_name={#$shuju_array[customer]->admin_name#}">去结算</a></td>
    </tr>
    {#/section#}
</table>
