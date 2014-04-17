
{#if $target  eq  "true"#}
<div class="alert alert-success">操作成功</div>
{#/if#}
{#if $target  eq  "false"#}
<div class="alert alert-danger">操作失败，重新提交</div>
{#/if#}



<form class="form-horizontal" role="form" ACTION="admin_edit_info.php"
      METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
    <input type="hidden" name="insert" value="insert" />
    <div class="form-group">
        <label for="inputEmail3" class="col-sm-2 control-label tooltip"></label>
        <div class="col-sm-10">
        </div>
    </div>
    <div class="form-group">
        <label >{#$message#}</label>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">付款状态</label>
        <div class="col-sm-10">
            {#if $is_pay == 0 #}未付款{#else#}已付款{#/if#}
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">账户名</label>
        <div class="col-sm-10">
            <input class="form-control" name="uname" type="text" id="uname" value="{#$name#}"/>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">开通手机版</label>
        <div class="col-sm-10">
            <select name="isphone">
                <option {#if $is_phone == 0 #}selected="selected"{#/if#} value="0">关闭</option>
                <option {#if $is_phone == 1 #}selected="selected"{#/if#} value="1">开通</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">开通电脑版</label>
        <div class="col-sm-10">
            <select name="ispc">{#$is_pc#}
                <option {#if $is_pc == 0 #}selected="selected"{#/if#} value="0">关闭</option>
                <option {#if $is_pc == 1 #}selected="selected"{#/if#} value="1">开通</option>
            </select>
        </div>
    </div>

    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">请柬风格</label>
        <div class="col-sm-10">
            <select name="style">
                <option {#if $style eq "style1" #}selected="selected"{#/if#} value="style1">欧美风</option>
                <option {#if $style eq "style2" #}selected="selected"{#/if#} value="style2">民族风</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">贵宾数量</label>
        <div class="col-sm-10">
            <input class="form-control" name="vip_num" type="text" id="vip_num" value="{#$vip_num#}"/>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">广告</label>
        <div class="col-sm-10">
            <input class="form-control" name="advert" type="text" id="advert" value="{#$advert#}"/>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">开启、关闭 广告</label>
        <div class="col-sm-10">
            <label class="radio">
                <input type="radio" name="is_advert" id="optionsRadios1" value="1" {#if $is_advert == "1" #}checked{#/if#} >
                开启
            </label>
            <label class="radio">
                <input type="radio" name="is_advert" id="optionsRadios2" value="0" {#if $is_advert == "0" #}checked{#/if#}>
                关闭
            </label>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">字体</label>
        <div class="col-sm-10">
            <input class="form-control" name="font_family" type="text" id="font_family" value="{#$font_family#}"/>
        </div>
    </div>


    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">祝福信息</label>
        <div class="col-sm-10">
            <input class="form-control" name="extends" type="text" id="extends" value="{#$extends#}"/>
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword3" class="col-sm-2 control-label">特别称呼</label>
        <div class="col-sm-10">
            <input class="form-control" name="special_name" type="text" id="special_name" value="{#$special_name #}"/>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
    </div>
</form>