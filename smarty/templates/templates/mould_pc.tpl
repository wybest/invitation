{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
     <div class="alert alert-danger">操作失败，重新提交</div> 
{#/if#} 
{#if $message#}  
     <div class="alert alert-success">{#$message#}</div>
{#/if#}
<form class="form-horizontal"  ACTION="save_pc_mould.php"
		METHOD="POST" id="form1" name="form1">
<input type="hidden" name="insert" value="insert" />		
<div style="margin-top: 20px;width: 100%;">

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p1.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p1" {#if $pcmould  eq  "p1"#} checked="checked" {#/if#}/>
</div>
</div>


<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p2.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p2" {#if $pcmould  eq  "p2"#} checked="checked" {#/if#}/>
</div>
</div>


<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p3.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p3" {#if $pcmould  eq  "p3"#} checked="checked" {#/if#}/>
</div>
</div>


<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p4.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p4" {#if $pcmould  eq  "p4"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p5.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p5" {#if $pcmould  eq  "p5"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p6.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p6" {#if $pcmould  eq  "p6"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p7.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p7" {#if $pcmould  eq  "p7"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p8.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p8" {#if $pcmould  eq  "p8"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p9.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p9" {#if $pcmould  eq  "p9"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p10.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p10" {#if $pcmould  eq  "p10"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p11.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p11" {#if $pcmould  eq  "p11"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p12.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p12" {#if $pcmould  eq  "p12"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p13.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p13" {#if $pcmould  eq  "p13"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p14.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p14" {#if $pcmould  eq  "p14"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p15.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p15" {#if $pcmould  eq  "p15"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">
<div style="margin-left: 10px;">
<img  class="img-thumbnail"
	src="uploadimg/p16.jpg">
</div>	
<div style="text-align: center;">
<input type="radio" name="pcmould" value="p16" {#if $pcmould  eq  "p16"#} checked="checked" {#/if#}/>
</div>
</div>

<div style="float: left;">

<div style="text-align: center;width: 170px; height: 265px;margin-top:80px;">
<button type="submit" class="btn btn-primary">提交电脑模板</button>
</div>

</div>

</div>


</form>