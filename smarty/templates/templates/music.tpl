
{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
     <div class="alert alert-danger">操作失败，重新提交</div> 
{#/if#}  


 <link rel="stylesheet" href="editor/jquery.wysiwyg.css" type="text/css" media="screen" />
  <script type="text/javascript" src="editor/jquery.wysiwyg.js"></script>
  <script type="text/javascript">
  $(function()
  {
      $('#message').wysiwyg();
  });
  $('#lasttime').tooltip('show')
  </script>


<form class="form-horizontal" role="form" ACTION="save_music.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">背景音乐</label>
    <div class="col-sm-10">
      <select class="form-control" name="music" onchange="checkStyle()">
		{#$mp3list#}
		{#section name=customer loop=$mp3list #}
			<option {#if $music eq $mp3list[customer]#}selected="selected"{#/if#} value ="{#$mp3list[customer]#}">{#$mp3list[customer]#}</option>
		{#/section#}
		
		</select>
    </div>
  </div>
        <p style="line-height:20px">
  			<span style="display:inline">	
	<object type="application/x-shockwave-flash"		data="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="19" height="20"		id="dewplayer-mini">		<param name="wmode" value="transparent">		<param name="movie"			value="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1">		<embed src="images/dewplayer-mini.swf?mp3=http://bcs.duapp.com/mp3folder/{#$music#}&amp;autostart=1&amp;autoreplay=1" width="20"			height="20" wmode="transparent"></embed>	</object></span>	</p>
</form>
<script language="javascript" type="text/javascript">
function checkStyle()
{
	form1.submit();
}
</script>