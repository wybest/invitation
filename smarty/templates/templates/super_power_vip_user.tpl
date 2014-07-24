{#if $message #}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
<form id="serviceForm" method="post" >

    <table style="width: 100%;">

        <tr>
            <td> <input type="text" id="ad_name" name="ad_name" value="{#$ad_name#}"></td>
        </tr>
        <tr>
            <td>
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
            </td>
        </tr>
        <tr>
            <td align="right"><input class="btn btn-primary" type="submit" value="查询"></td>
        </tr>
    </table>

    <input type="hidden" id="bdate" name="bdate" value="{#$bdate#}" />
    <input type="hidden" id="edate" name="edate" value="{#$edate#}" />
    <input type="hidden" id="page_nm" name="page_nm" value="{#$page_nm#}" />

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
        <td align="center">管理员</td>
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
        <td align="center" >{#if $shuju_array[customer]->admin_id == 1 #}wy{#else if $shuju_array[customer]->admin_id == 2 #}tb007{#else if $shuju_array[customer]->admin_id == 3 #}vampirelxl{#else if $shuju_array[customer]->admin_id == 4 #}bulage{#else if $shuju_array[customer]->admin_id == 5 #}wangjian{#else if $shuju_array[customer]->admin_id == 6 #}布拉格之恋{#else if $shuju_array[customer]->admin_id == 7 #}美天视觉{#else if $shuju_array[customer]->admin_id == 8 #}t8star{#else if $shuju_array[customer]->admin_id == 9 #}汤丹蝶{#else if $shuju_array[customer]->admin_id == 10 #}gn视觉{#else#}wangjian{#/if#} </td>
    </tr>
    {#/section#}
</table>
  <br>


<div class="demo">
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