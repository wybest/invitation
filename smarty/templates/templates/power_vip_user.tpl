{#if $message #}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
<form id="serviceForm" method="post">

    <div class="form-group">
        <input type="text" id="u_name" name="u_name" value="{#$u_name#}">
    </div>
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
    <input type="hidden" id="page_nm" name="page_nm" value="{#$page_nm#}" />
    <button type="submit" class="btn btn-primary">查询</button>
</div>
</form>
<table class="table table-hover">
    <tr>
        <td align="center">账户名字</td>
        <td align="center">手机版</td>
        <td align="center">电脑版</td>
        <td align="center">开通时间</td>
        <td align="center">贵宾数量</td>
        <td align="center">账户密码</td>
        <td align="center">模板</td>
        <td align="center">操作</td>
        <td align="center">结算</td>
    </tr>
    {#section name=customer loop=$shuju_array #}
    <tr>
        <td align="center" >{#$shuju_array[customer]->name#}</td>
        <td align="center" >{#if $shuju_array[customer]->is_phone == 0 #}未开通{#else#}开通{#/if#}</td>
        <td align="center">{#if $shuju_array[customer]->is_pc == 0 #}未开通{#else#}开通{#/if#}</td>
        <td align="center" >{#$shuju_array[customer]->create_time#}</td>
        <td align="center" >{#$shuju_array[customer]->vip_num#}</td>
        <td align="center" >{#$shuju_array[customer]->password#}</td>
        <td align="center" >{#if $shuju_array[customer]->style eq "style1" #}高端版{#else#}时尚版{#/if#}</td>
        <td><a onclick="return confirm('确认要删除?');" href="admin_delete_user.php?userId={#$shuju_array[customer]->id#}">关闭</a></td>
        <td align="center" >{#if $shuju_array[customer]->is_confirm == 0 #}未结算{#else#}已结算{#/if#} </td>
    </tr>
    {#/section#}
</table>
  <br>

<div class="demo">总共 {#$count#},共{#$end#}页
    <div id="demo1">
    </div>
</div>

<link rel="stylesheet" type="text/css" href="css/page.css" media="screen"/>
<script src="js/jquery.paginate.js" type="text/javascript"></script>
<script type="text/javascript" src="datepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="datepicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">

    $(document).ready(function(){
        $("#demo1").paginate({
            count 		: {#$end#},
            start 		: {#$page_nm#},
            display     : 16,
            border					: true,
            border_color			: '#fff',
            text_color  			: '#fff',
            background_color    	: 'black',
            border_hover_color		: '#ccc',
            text_hover_color  		: '#000',
            background_hover_color	: '#fff',
            images					: false,
            mouse					: 'press',
            onChange                : function(page){
                $("#page_nm").val(page);
                $("#serviceForm").submit();
            }
        });
    });

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