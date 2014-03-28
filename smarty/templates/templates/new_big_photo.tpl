<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>
</head>
<body>
{#if $message != ""#}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
      <div class="alert alert-danger">操作失败，重新提交</div>   
{#/if#} 
<div class="alert alert-success">（相片要求为横版） </div>
<div id="showtext" class="editor active" style="margin: auto;width: 100%;">
<div style="float: left;padding-top: 20px;">
<form class="form-inline" role="form" action="new_save_photo.php" method="post" enctype="multipart/form-data">

    <table>
        <tr>
            <td><input class="input-file" type="file" name="upfile"></td>
            <td><button type="submit" class="btn btn-primary">提 交</button></td>
        </tr>
    </table>
 <input type="hidden" name="fileup" value="true">
			<input type="hidden" name="type" value="big">
    <input type="hidden" name="target" value="new">
</form>
</div>
{#if $bigimage !=  "none" #}  
<div style="float: left;padding-left: 100px;">
<div style="margin-top: 20px;">
<img style="width: 210px; height: 200px;float: " class="img-thumbnail"
	src="marryimg/{#$bigimage#}">
</div>	
<div style="text-align: center;">
<a onclick="return confirm('确认要删除?');" href="new_delete_photo.php?delete=true&type=big"><img style="" src="img/delete.png" alt="删除"></a>

</div>
</div>
{#/if#}

<div class="clear"></div>
</div>
<script type="text/javascript" src="js/jQuery1.7.2.js"></script>
<script type="text/javascript">


    function test() {

        {#if $bigimage !=  "none" #}
        var thumbnailurl = 'marryimg/{#$bigimage#}';
        $("#invite_webimg", parent.document.body).attr('src',thumbnailurl);
        $("#iframepage",parent.document.body).contents().find('#invite_webimg').attr('src', thumbnailurl);
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
</html>