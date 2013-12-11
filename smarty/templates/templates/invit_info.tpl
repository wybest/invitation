
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


<form class="form-horizontal" role="form" ACTION="save_info.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label tooltip"></label>
    <div class="col-sm-10">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">新郎</label>
    <div class="col-sm-10">
      <input class="form-control" name="man" type="text" id="man" value="{#$man#}"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">新娘</label>
    <div class="col-sm-10">
      <input class="form-control" name="women" type="text" id="women" value="{#$women #}"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴标题</label>
    <div class="col-sm-10">
      <input class="form-control" name="bigtitle" type="text" id="title" value="{#$bigtitle #}" placeholder="例如：帅哥和美女结婚了"/>
    </div>
  </div>
  <!--  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">请柬风格</label>
    <div class="col-sm-10">
      <select class="form-control" name="mould">
              <option {#if $mould eq "入场券"#}selected="selected"{#/if#} value ="入场券">入场券</option>
              <option {#if $mould eq "典雅古风"#}selected="selected"{#/if#} value ="典雅古风">典雅古风</option>
              <option {#if $mould eq "粉红浪漫"#}selected="selected"{#/if#} value="粉红浪漫">粉红浪漫</option>
              <option {#if $mould eq "金色永恒"#}selected="selected"{#/if#} value="金色永恒">金色永恒</option>
              <option {#if $mould eq "桃色经典"#}selected="selected"{#/if#} value="桃色经典">桃色经典</option>
              <option {#if $mould eq "正港台味"#}selected="selected"{#/if#} value="正港台味">正港台味</option>
              <option {#if $mould eq "蓝色梦幻"#}selected="selected"{#/if#} value="蓝色梦幻">蓝色梦幻</option>
              <option {#if $mould eq "温馨淡黄"#}selected="selected"{#/if#} value="温馨淡黄">温馨淡黄</option>
		</select>
    </div>
  </div>-->
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">背景音乐</label>
    <div class="col-sm-10">
      <select class="form-control" name="music">
		{#$mp3list#}
		{#section name=customer loop=$mp3list #}
			<option {#if $music eq $mp3list[customer]#}selected="selected"{#/if#} value ="{#$mp3list[customer]#}">{#$mp3list[customer]#}</option>
		{#/section#}
		
		</select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴日期</label>
    <div class="col-sm-10">
      <input class="form-control" name="show_time" type="text" id="show_time"
			value="{#$show_time #}" placeholder="例如：2013年1月1日  星期四"/> 
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴时分</label>
    <div class="col-sm-10">
      <input class="form-control" name="mini_time" type="text" id="Text2"
			value="{#$mini_time #}" placeholder="例如：下午5:30入席"/> 
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚礼提醒时间（结婚时间）</label>
    <div class="col-sm-10">
      <input class="form-control" name="lasttime" type="text" id="lasttime"
			value="{#$lasttime #}" placeholder="格式：2013/9/9 12:30" data-toggle="tooltip" title="格式：2013/9/9 12:30"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">席设</label>
    <div class="col-sm-10">
      <input class="form-control" name="house" type="text" id="house" value="{#$house #}"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴地址</label>
    <div class="col-sm-10">
      <input class="form-control" name="adress" type="text" id="adress"
			value="{#$adress #}" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">自定义标题</label>
    <div class="col-sm-10">
      <input class="form-control" name="title" type="text" id="title" value="{#$title #}" placeholder="例如：爱情故事"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">自定义文本</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="message" cols="30" rows="5"
			id="message">{#$message #}</textarea>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">提交</button>
    </div>
  </div>
</form>