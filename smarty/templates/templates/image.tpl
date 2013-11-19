{#if $message != ""#}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
{#if $target  eq  "true"#}  
      <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
      <div class="alert alert-danger">操作失败，重新提交</div>  
{#/if#} 
<div class="alert alert-success">（建议6张相片最合适,相片要求为竖版）相片大小限制在150kb内，手机屏幕小，打开是很清晰的，同时手机打开速度会很快</div>
<div style="">
<form class="form-inline" role="form" action="save_photo.php" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">相册图片（建议6张最合适）</label>
    <input class="input-file" type="file" name="upfile">
  </div>
 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="image">
  <button type="submit" class="btn btn-primary">提 交</button>
</form>
</div>
<div style="margin-top: 20px;width: 800px;">
{#if $images != "none"#}
{#section name=customer loop=$images #}

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 210px; height: 200px;" class="img-thumbnail"
	src="http://bcs.duapp.com/marryimg/{#$images[customer]#}">
</div>	
<div style="text-align: center;">
<a onclick="return confirm('确认要删除?');" href="delete_photo.php?delete=true&type=image&image={#$images[customer]#}"><img style="" src="img/delete.png" alt="删除"></a>

</div>
</div>

	&nbsp;
&nbsp; &nbsp;
    {#if $smarty.section.customer.iteration mod 3 == 0 #}
    	</div>
		<p>&nbsp;</p>
		<div style="margin-top: 200px;width: 800px;">
    {#/if#} 
{#/section#}
{#/if#}

</div>
