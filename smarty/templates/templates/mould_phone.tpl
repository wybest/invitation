{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
     <div class="alert alert-danger">操作失败，重新提交</div> 
{#/if#} 
{#if $message#}  
     <div class="alert alert-success">{#$message#}</div>
{#/if#}
<form class="form-horizontal"  ACTION="save_phone_mould.php"
		METHOD="POST" id="form1" name="form1">
<input type="hidden" name="insert" value="insert" />		
<div style="margin-top: 20px;width: 800px;">

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/a.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="典雅古风" {#if $mould  eq  "典雅古风"#} checked="checked" {#/if#}/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/b.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="粉红浪漫" {#if $mould  eq  "粉红浪漫"#} checked="checked" {#/if#}/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/c.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="金色永恒" {#if $mould  eq  "金色永恒"#} checked="checked" {#/if#}/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/d.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="蓝色梦幻" {#if $mould  eq  "蓝色梦幻"#} checked="checked" {#/if#}/>
</div>
</div>

</div>

<div style="margin-top: 200px;width: 800px;">

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/e.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="入场券" {#if $mould  eq  "入场券"#} checked="checked" {#/if#}/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/f.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="桃色经典" {#if $mould  eq  "桃色经典"#} checked="checked" {#/if#}/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 170px; height: 265px;" class="img-thumbnail"
	src="uploadimg/g.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="mould" value="正港台味" {#if $mould  eq  "正港台味"#} checked="checked" {#/if#}/>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;

<div style="float: left;">

<div style="text-align: center;width: 170px; height: 265px;margin-top:80px;">
<button type="submit" class="btn btn-primary">提交手机模板</button>
</div>

</div>


</div>
</form>