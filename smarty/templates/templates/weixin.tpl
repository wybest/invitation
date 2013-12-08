
{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
     <div class="alert alert-danger">操作失败，重新提交</div> 
{#/if#}  



<form class="form-horizontal" role="form" ACTION="save_weixin.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label >自定义微信名片文字（不填写默认使用"诚挚邀请您来参加，点击查看详情."）</label>
  </div>		
  <div class="form-group">
    <div class="col-sm-10">
      <textarea style="float: left;"  name="weixin" cols="30" rows="5"
			id="weixin">{#$weixin #}</textarea>
	  <img style="float: left;width: 270px; height: 125px;" src="images/f.jpg">		
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">提交</button>
    </div>
  </div>
</form>