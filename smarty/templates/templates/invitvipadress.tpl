
<div id="showtext" style="margin: auto; width: 100%;margin-top: 50px;">

          	<form class="form-inline" role="form" ACTION="save_vip.php" METHOD="POST" id="form1" name="form1">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail2">首页图片</label>
    <input  class="form-control" id="name" name="vip_name" type="text"  placeholder="亲爱的XX" />
  </div>
  <button type="submit" class="btn btn-primary">提 交</button>
</form>

{#if $message != ""#}
<div class="alert alert-danger">{#$message#}</div>
{#/if#}
<div style="margin-top: 20px;">

{#section name=customer loop=$vip_array #}

<div style="float: left;">
<div style="margin-left: 10px;">
<img src='http://chart.apis.google.com/chart?cht=qr&chs=150x150&choe=UTF-8&chld=L|4&chl=http://{#$host#}phone.php?name={#$user_id#}@{#$vip_array[customer]->id#}' width='120' height='120'  />
</div>	
<div style="text-align: center;">
<span>{#$vip_array[customer]->vip_name#}</span>
</div>
</div>

	&nbsp;
&nbsp; &nbsp;
    {#if $smarty.section.customer.iteration mod 6 == 0 #}
    	</div>
		<p>&nbsp;</p>
		<div>
    {#/if#} 
{#/section#}
</div>

        <script type="text/javascript">
          function create(){
            var name = document.getElementById('name').value;
            //thisURL = document.URL;
            var url = "http://{#$host#}phone.php?name={#$name#}-"+encodeURIComponent(name);
            document.getElementById('imgs1').innerHTML = "<img src='http://chart.apis.google.com/chart?cht=qr&chs=150x150&choe=UTF-8&chld=L|4&chl=" + url + "' width='150' height='150' alt='网址URL 二维码生成' />";
            document.getElementById('url1').innerHTML = url;
          }
          </script>         
 </div>         