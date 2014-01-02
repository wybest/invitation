<!DOCTYPE html>

<html>

<head>

<meta charset=utf-8>

<title>微信喜帖  会员注册</title>

<link href="skin/style/css/index.css"  rel="stylesheet" type="text/css"/>

<link href="skin/style/css/manfind.css"  rel="stylesheet" type="text/css"/>





<script src="skin/style/js/jquery-1.5.1.min.js" ></script>

<script src="skin/style/js/form.js" ></script>

<script src="skin/style/js/placeholder.js" ></script>



<script>

var _hmt = _hmt || [];

(function() {

  var hm = document.createElement("script");

  hm.src = "js/hm.baidu.com/hm.js-c64922fe907004774c797344b7063851";

  var s = document.getElementsByTagName("script")[0]; 

  s.parentNode.insertBefore(hm, s);

})();

</script>

<script>
function FormCheck()
{
if (document.getElementById('name').value=="")
	{
	  alert("对不起，名字不能为空")
	  document.getElementById('name').focus();
	  return (false);
	 }
if (document.getElementById('password').value=="")
	{
	  alert("对不起，密码不能为空")
	  document.getElementById('password').focus();
	  return (false);
	 }
if (document.getElementById('password').value!=document.getElementById('repassword').value)
	{
	  alert("对不起，两次密码不一致")
	  document.getElementById('repassword').focus();
	  return (false);
	 }
if (document.getElementById('email').value=="")
{
  alert("对不起，邮箱不能为空")
  document.getElementById('email').focus();
  return (false);
 }

}


</script>

</head>

<body>


<div class="suc_content nojsp" style="margin-left: auto;margin-right: auto;">

  <div class="suc_kuang">

    <div class="hei_513">

      <h4 class="h4_suc">注册微信喜帖帐户</h4>

      <p class="suc_p">新人可以在爱尚电子喜帖网站中，挑选中意的样式，填上相关信息，就可以发送给亲朋好友。追求个性化的新人还可以选择喜欢的背景图片、音乐或贴上自己的婚纱照，DIY有声有色的电子喜帖。。如果您已拥有爱尚帐户，则可<a href="" class="cor_yellow">在此登录</a></p>

      <div class="radio_quyu">

      {#$message#}

      </div>

     <form action="regist.php" id="form1" method="post">

        <dl class="login-dl clearfix">



          <dt class="dt_l">用户名：</dt>

	  <dd class="dd_r clearfix" id="emailInner">

            <input type="text" name="name" id="name" class="input_kuang val_m item errortip address" value="" isRequired="true"  autocomplete="off" />

      </dd>

          <dl class="login-dl clearfix">


	  <dt class="dt_l">设置密码：</dt>

	  <dd class="dd_r dd_r_pos clearfix" id="pwdTd">

	    <input type="password" class="input_kuang item val_m errortip password" isRequired="true" id="password" name="password" autocomplete="off" />

	  </dd>

          <dt class="dt_l">确认密码：</dt>

	  <dd class="dd_r clearfix">

            <input id="repassword" type="password" class="input_kuang val_m item errortip" name="repassword" isRequired="true" repeat="#pwd" autocomplete="off" />

	  </dd>
	  
	  <dt class="dt_l">邮箱(长度0-40)：</dt>

	  <dd class="dd_r clearfix">

            <input id="email" type="text" class="input_kuang val_m item errortip" name="email" isRequired="true" repeat="#pwd" autocomplete="off" />

	  </dd>
	  
	  <dt class="dt_l">验证码：</dt>

	  <dd class="dd_r clearfix">
			<input style="width: 140px;" type="text" name="code" class="input_kuang item errortip" id="code" placeholder="验证码" isRequired="true" autocomplete="off"/>
          <img style="height: 37px;" src="code.php"/>
	  </dd>

	      <i class="code_error">

	      

	      </i>

	    </span>

          </dd>

	  <dt class="dt_l">&nbsp;</dt>

	  <dd class="dd_r la_height clearfix">

            <div class="sub_login flt_l"><input type="submit" class="no_bg" value="立即注册" onClick="javascript:return FormCheck();"/></div>

          </dd>

	</dl>
    </dl>
    </form>
    </div>

    <div class="suc_botm"></div><!--这部分是卷角效果-->

  </div>

</div>

<div class="footer">

  <ul class="links">

    <li class="copyright"><span>网络版权所有</span></li>

  </ul>

</div>

</body>

</html>