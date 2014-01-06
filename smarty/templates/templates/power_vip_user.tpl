
<form method="post">
<div class="form-group">
    <div id="date1" class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-MM-dd" data-link-field="bdate" data-link-format="yyyy-mm-dd">
        <input class="form-control" size="16" type="text" value="{#$bdate#}" readonly>
        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
    </div>
    <div id="date2" class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-MM-dd" data-link-field="edate" data-link-format="yyyy-mm-dd">
        <input class="form-control" size="16" type="text" value="{#$edate#}" readonly>
        <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
    </div>
    <input type="hidden" id="bdate" name="bdate" value="{#$bdate#}" />
    <input type="hidden" id="edate" name="edate" value="{#$edate#}" />
    <button type="submit" class="btn btn-primary">查询</button>
</div>
</form>
<table class="table table-hover">
    <tr>
        <td align="center">账户名字</td>
        <td align="center">手机版状态</td>
        <td align="center">电脑版状态</td>
        <td align="center">开通时间</td>
        <td align="center">贵宾数量</td>
        <td align="center">账户密码</td>
        <td align="center">操作</td>
    </tr>
    {#section name=customer loop=$shuju_array #}
    <tr>
        <td align="center" >{#$shuju_array[customer]->name#}</td>
        <td align="center" >{#if $shuju_array[customer]->is_phone == 0 #}未开通{#else#}开通{#/if#}</td>
        <td align="center">{#if $shuju_array[customer]->is_pc == 0 #}未开通{#else#}开通{#/if#}</td>
        <td align="center" >{#$shuju_array[customer]->create_time#}</td>
        <td align="center" >{#$shuju_array[customer]->vip_num#}</td>
        <td align="center" >{#$shuju_array[customer]->password#}</td>
        <td><a href="#">关闭</a></td>
    </tr>
    {#/section#}
</table>
  <br>

<ul class="pager">
    <li class="previous"><a href="power_vip_user.php?page_nm=1">第一页</a></li>
    <li class="previous"><a href="power_vip_user.php?page_nm={#$up#}">&larr;前一页</a></li>
    <li class="next"><a href="power_vip_user.php?page_nm={#$end#}">最后一页</a></li>
    <li class="next"><a href="power_vip_user.php?page_nm={#$next#}">下一页&rarr;</a></li>
    <td>第{#$page#}页    (总共 {#$count#}人,共{#$end#}页)</td>
</ul>
<script type="text/javascript" src="datepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="datepicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">

    $('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 2,
        forceParse: 0
    });
</script>