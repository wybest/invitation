<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false" onbeforecopy="return false" onmouseup=document.selection.empty() oncopy=document.selection.empty() onselect=document.selection.empty()>
{#if $message != ""#}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
{#if $target  eq  "true"#}  
      <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
      <div class="alert alert-danger">操作失败，重新提交</div>  
{#/if#} 
<div class="alert alert-success">（建议6张相片最合适,相片要求为竖版 500*750）相片大小限制在150kb内，手机屏幕小，打开是很清晰的，同时手机打开速度会很快,，压缩图片去<a href="http://xiuxiu.web.meitu.com/">美图秀秀网页版</a> </div>
<div style="">
<form class="form-inline" role="form" action="new_save_photo.php" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">相册图片（建议6张最合适）</label>
    <input class="input-file" type="file" name="upfile">
  </div>
 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="image">
    <input type="hidden" name="target" value="new">
  <button type="submit" class="btn btn-primary">提 交</button>
</form>
</div>
<div style="margin-top: 20px;width: 100%;">
{#if $images != "none"#}
{#section name=customer loop=$images #}

<div style="float: left;">
<div style="margin-left: 10px;">
<img style="width: 100px; height: 150px;" class="img-thumbnail"
	src="marryimg/{#$images[customer]#}">
</div>	
<div style="text-align: center;">
<a onclick="return confirm('确认要删除?');" href="new_delete_photo.php?delete=true&type=image&image={#$images[customer]#}"><img style="" src="img/delete.png" alt="删除"></a>

</div>
</div>

	&nbsp;
&nbsp; &nbsp;
    {#if $smarty.section.customer.iteration mod 3 == 0 #}
    	</div>
		<p>&nbsp;</p>
		<div style="margin-top: 200px;width: 100%;">
    {#/if#} 
{#/section#}
{#/if#}

</div>

<script type="text/javascript" src="js/jQuery1.7.2.js"></script>

<script type="text/javascript">


    function test() {
        {#if $images != "none"#}
        $('#nopicture', parent.document.body).html("");
        $("#sortable", parent.document.body).children().filter('li').remove();
        $("#iframepage", parent.document.body).contents().find('#Gallery').children().filter('li').remove();
        {#section name=customer loop=$images #}
        var thumbnailurl = 'marryimg/{#$images[customer]#}';
        $("#sortable", parent.document.body).append('<li  class="ui-state-default thumb" style="text-align: right"><span><img src="./images/close_button.png"></span>' +
                '<img class="thumbimage" src="' + thumbnailurl + '" ></li>');

        $("#iframepage", parent.document.body).contents().find('#Gallery').append('<li><a href="#"><img src="' + thumbnailurl + '" alt=""/></a></li>');
        {#/section#}
        {#/if#}
    }
    setTimeout(function(){test();},500);

    document.oncontextmenu = function (event){
        if(window.event){
            event = window.event;
        }try{
            var the = event.srcElement;
            if (!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
                return false;
            }
            return true;
        }catch (e){
            return false;
        }
    }
</script>
</body>