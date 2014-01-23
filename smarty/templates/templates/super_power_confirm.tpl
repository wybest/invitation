<form class="form-horizontal" role="form" action="super_power_confirm.php">
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label">管理员账号</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="ad_name" name="ad_name" value="{#$ad_name#}">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">结算日期</label>
        <div class="col-sm-10">
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
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">查询</button>
        </div>
    </div>
    <input type="hidden" id="bdate" name="bdate" value="{#$bdate#}" />
    <input type="hidden" id="edate" name="edate" value="{#$edate#}" />
</form>
</br>
</br>


<form class="form-horizontal" role="form" action="super_power_do_confirm.php">
    <div class="form-group">
        <label class="col-sm-2 control-label">未结算</label>
        <div class="col-sm-10">
            <p class="form-control-static">{#$count1#}</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">已结算</label>
        <div class="col-sm-10">
            <p class="form-control-static">{#$count2#}</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">关闭,未结算</label>
        <div class="col-sm-10">
            <p class="form-control-static">{#$count3#}</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">关闭,已结算</label>
        <div class="col-sm-10">
            <p class="form-control-static">{#$count4#}</p>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword" class="col-sm-2 control-label">需结算金额</label>
        <div class="col-sm-10">
            <p class="form-control-static">{#$money#}</p>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-default">结算完成</button>
            <input type="hidden" id="b" name="b" value="{#$bdate#}" />
            <input type="hidden" id="e" name="e" value="{#$edate#}" />
            <input type="hidden" id="ad" name="ad" value="{#$ad_name#}">
        </div>
    </div>
</form>
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