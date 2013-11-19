{#if $message != ""#}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
      <div class="alert alert-danger">操作失败，重新提交</div>   
{#/if#} 
<div class="alert alert-success">（相片要求为横版）相片大小限制在150kb内，手机屏幕小，打开是很清晰的，同时手机打开速度会很快</div>
<div id="showtext" class="editor active" style="margin: auto;width: 710px;">
<div style="float: left;padding-top: 90px;">
<form class="form-inline" role="form" action="save_photo.php" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">首页图片</label>
    <input class="input-file" type="file" name="upfile">
  </div>
 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="big">
  <button type="submit" class="btn btn-primary">提 交</button>
</form>
</div>
{#if $bigimage !=  "none" #}  
<div style="float: left;padding-left: 100px;">
<div style="margin-top: 20px;">
<img style="width: 210px; height: 200px;float: " class="img-thumbnail"
	src="http://bcs.duapp.com/marryimg/{#$bigimage#}">	
</div>	
<div style="text-align: center;">
<a onclick="return confirm('确认要删除?');" href="delete_photo.php?delete=true&type=big"><img style="" src="img/delete.png" alt="删除"></a>

</div>
</div>
{#/if#}

<div class="clear"></div>
</div>
