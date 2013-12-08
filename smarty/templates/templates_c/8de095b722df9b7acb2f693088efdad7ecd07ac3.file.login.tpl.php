<?php /* Smarty version Smarty-3.1.13, created on 2013-12-08 08:22:42
         compiled from "smarty\templates\templates\login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:24789525bf4f23aa7c1-39274370%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8de095b722df9b7acb2f693088efdad7ecd07ac3' => 
    array (
      0 => 'smarty\\templates\\templates\\login.tpl',
      1 => 1386490959,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '24789525bf4f23aa7c1-39274370',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_525bf4f24d3099_42162076',
  'variables' => 
  array (
    'message' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_525bf4f24d3099_42162076')) {function content_525bf4f24d3099_42162076($_smarty_tpl) {?><!DOCTYPE html>

<html>

<head>

  <meta charset=utf-8>

 <title>为您提供免费电子喜帖,微信喜帖支持手机的电子喜帖,微信喜帖，婚礼微信墙的相关服务</title>

<meta name="keywords" content="微请帖,微信喜帖,微喜帖，婚礼微信墙,电子喜帖,微信发喜帖	,微信电子喜帖,微喜帖,创意喜帖设计,电子请柬，创意婚礼请柬，创意结婚请柬" />

  <style>

body,h1,h2,h3,h4,h5,h6,blockquote,p,pre,dl,dd,ol,ul,caption,th,td,form,fieldset,legend,input,button,textarea,address{margin:0;padding:0}

h1,h2,h3,h4,h5,h6{font-size:100%}

ol,ul{list-style:none}

fieldset,img{border:0}

address,cite,dfn,em,var{font-style:normal}

code,kbd,pre,samp{font-family:courier new,courier,monospace}

input,button,textarea,select{font-size:100%;}

table{border-collapse:collapse;border-spacing:0;empty-cells:show;font-size:inherit}

abbr[title]{border-bottom:1px dotted;cursor:help}

a,a:hover{text-decoration:none}

a,

label,

:focus{outline:0 none;}

body{font:12px "Hiragino Sans GB", "Microsoft YaHei", "WenQuanYi Micro Hei", sans-serif; color:#000;}

button, input, select, textarea {font-family:"Hiragino Sans GB", "Microsoft YaHei", "WenQuanYi Micro Hei", sans-serif;}

input:-moz-placeholder {color: #ccc; }

::-webkit-input-placeholder {color:#ccc;}

.clearfix:after{display: block; content: "\20"; height: 0; clear: both; overflow: hidden; visibility: hidden;}/*ie8以上*/

.clearfix{*zoom:1;}/*ie6、7*/ 



.input_kuang,

.sub_login,

.mt_login,

.popmessage{background-image:url("images/se.gif"); background-repeat:repeat-x;}



body{background:#f2f2f2;}

.top{height:20px; background:#ececec; border-bottom:1px solid #d9d9d9;}

.logo, .content, .footer{width:900px; margin:0 auto; padding:0 30px;}

.content{height:500px; position:relative;}

.loadimg{background:url("../../../style/images/img/welcome3.jpg") 0 80px no-repeat;}

.login_form{width:377px; float:right; background:#fff url("../../../style/images/img/8AAhAQADs=") left top repeat-x; *background:#fff url("/images/s_bg.gif")/*tpa=http://www.vemarry.com/style/images/img/s_bg.gif*/ left top repeat-x;}

.pad_50{padding:0 0 22px 50px; border:1px solid #dcdcdc; border-bottom:1px dashed #d5d5d5;}

.login_form h4{font:normal 22px/1.1 \5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53; color:#ff7e00; height:52px; padding-top:50px;}

.input-field{position:relative; margin-bottom:14px;}

.input_kuang{display:block; float:left; vertical-align:top; height:20px; line-height:20px; padding:8px; font-size:14px; border:1px solid #e3e3e3; border-top:1px solid #ccc; width:252px;

background-color:#fff; background-position:0 -118px; *background:#fff url("images/s_bgs2.gif") 0 -118px repeat-x; box-shadow:0 1px 1px #fff;}/*-- 文本输入框 --*/

.sub_bg, .input_kuang, .input_b, .sub_login, .mt_login{-moz-border-radius:3px; -webkit-border-radius:3px; border-radius:3px; }

.sub_bg , .mt_login, .input_b{-moz-box-shadow:0 1px 1px #f0f0f0; -webkit-box-shadow:0 1px 1px #f0f0f0; box-shadow:0 1px 1px #f0f0f0;}

.sub_login{margin:0 auto; width:130px; border:1px solid #dd621f; height:40px; background-position:0 0 ; *background:url("images/s_bgs2.gif") 0 0 repeat-x; cursor:pointer;}/*-- 小黄按钮 --*/

.no_bg{border:0 none;padding:0;background-color:transparent;cursor:pointer; display:block;}

.sub_bg input{width:132px; height:36px;}

.sub_login input{width:130px;height:40px;color:#fff;font:700 16px/40px \5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53;}

.sub_login .sub_login_a{ display:inline-block; _display:inline; *zoom:1; width:130px;height:40px;text-align:center;color:#fff;font:700 16px/40px \5FAE\8F6F\96C5\9ED1,\9ED1\4F53,\6587\6CC9\9A7F\9ED1\4F53;}

.cooke{margin:20px 0 20px 0; height:14px; position:relative; color:#666;}

.cooke input{top:0; left:0; *left:-4px; *top:-4px; position:absolute;}

.cooke span{position:absolute; line-height:14px; display:block; top:0; left:22px;}



.sub_log a{float:left; margin:10px 0 0 20px; font-size:14px; color:#333; height:14px; display:inline-block; line-height:1.5;}



.third{ margin-top:29px; color:#666;line-height:18px;  }

.third a{ display:inline-block; _display:inline; *zoom:1; padding:0 14px 0 18px; height:16px; line-height:16px; overflow:hidden; vertical-align:text-bottom; color:#666; background:url("images/qq.gif") no-repeat; *background:url("images/third_logo4.gif") no-repeat;}

.third .qq{ background-position:0 0;}

.third .qq:hover{ background-position:0 -16px;  }

.third .sina{ background-position:0 -32px; }

.third .sina:hover{ background-position:0 -48px;}

.third .facebook{background-position:0 -64px;}

.third .sina:hover{ background-position:0 -48px;}

.third .facebook{background-position:0 -64px;}

.third .facebook:hover{background-position:0 -80px;}

.third .hide{display:none;}



.mt_login{display:inline-block; *display:inline; zoom:1; height:24px; border:1px solid #dadada; font-size:14px; cursor:pointer; padding-top:14px; width:273px;

text-align:center; color:#DD621F; font-weight:bold; background-position:0 -40px; *background:url("images/s_bgs2.gif")/*tpa=http://www.vemarry.com/style/images/img/s_bgs2.gif*/ 0 -40px repeat-x; }



.ano_log{padding:30px 50px 10px 50px; background:#f8f8f8; border:1px solid #dcdcdc; border-bottom:none; border-top:none;}

.ano_log .mt_login{height:30px; padding-top:12px;}

.ano_span_t{color:#999; line-height:1.1; text-align:center; font-size:12px; height:46px; background:url("images/bom_corner.png")/*tpa=http://www.vemarry.com/style/images/img/bom_corner.png*/ left bottom no-repeat;}



.error_icontwo{width:16px; height:16px; vertical-align:middle; display:inline-block; background:url("../../../style/images/img/yZKuSuXORbJYgAjqCHJu1UpCwoEEDAz7abgINCAA7")/*tpa=http://www.vemarry.com/style/images/img/yZKuSuXORbJYgAjqCHJu1UpCwoEEDAz7abgINCAA7*/ 0 -11px no-repeat; *background:url("images/icos2.gif") 0 -11px no-repeat; margin-right:6px;}

.littlepop{display:none; position:absolute; top:-35px; right:48px;}

.popmessage{border:1px solid #e8d76b; padding:10px; display:none; height:18px; color:#ff0000; line-height:1.1; box-shadow:0 1px 3px #e9e9e9;

  border-radius:3px; background-position:0 -252px; *background:url("images/s_bgs2.gif") 0 -252px repeat-x;}

.little_corner{display:block; width:12px; height:11px; background:url("../../../style/images/img/yZKuSuXORbJYgAjqCHJu1UpCwoEEDAz7abgINCAA7") 0 0 no-repeat; *background:url("images/icos2.gif") 0 0 no-repeat; margin-left:13px; margin-top:-2px; overflow:hidden; position:relative; z-index:1;}



.imgerror .errortip, .nosame .errortip, .error .errortip, .empty .errortip, .repeat .errortip{border:2px solid #f18447; padding:7px;}

.nosame .no_tips, .error .littlepop, .empty .littlepop, .error .error_tip, .empty .empty_tip, .repeat .repeat_tip, .succ .succ_tips{display:inline-block; _display:inline; *zoom:1; }



.links{display:inline-block;*display:inline;zoom:1;}

.links li{border-right:1px solid #ff6600; float:left;}

.links li.copyright{border-right:none;}

.footer{text-align:center; margin-top:40px; }

.footer a{color:#ff6600; padding:0 10px; }

.footer span{margin-left:10px; color:#999;}



.language{position:absolute; top:-80px; right:20px;}

.language a{padding:0 10px; color:#666; font-size:14px; border-right:1px solid #666;}

.language a.last{border:0 none;}

.language a:hover{color:#333; text-decoration:underline;}



.flt_l{float:left;}



.faq_link{margin-bottom:20px;}

.faq_link em{width:25px; height:25px; display:inline-block; margin-right:10px; background:url("images/faq_icon.png") 0 0 no-repeat; vertical-align:middle}

.faq_link a{color:#000; font-size:14px; vertical-align:middle}



.faq_link_more{color:#ff7e00; text-decoration:underline;}

.radio_quyu .faq_link_more{margin-left:40px;}

</style>



  <script>

var _hmt = _hmt || [];

(function() {

  var hm = document.createElement("script");

  hm.src = "js/hm.js-c64922fe907004774c797344b7063851";

  var s = document.getElementsByTagName("script")[0]; 

  s.parentNode.insertBefore(hm, s);

})();

</script>



</head>

<body>

<div class="top">

	<div class="logo">
<!-- <img src="../../../images/logo.png" tppabs="http://www.vemarry.com/images/logo.png" alt="" name="" width="145" height="62" id="logo" /> -->


	</div>

</div>



<div id="loaddiv" class="content clearfix">

  <div class="language">

   

  </div>

  <div class="login_form clearfix">

    <div class="pad_50 clearfix">

      <h4>欢迎登录爱尚帐户</h4>

      <form action="login.php" id="form1" method="post">

    <input type=hidden name=ecmsfrom value="">

    <input type=hidden name=enews value=login>

	<input name="tobind" type="hidden" id="tobind" value="0">

        <div class="input-field clearfix" id="loginId">

          <input type="text" name="name" value="" id="name" class="input_kuang item errortip" placeholder="账号" isRequired="true"  autocomplete="off"/>

        </div>

        <div class="input-field clearfix" id="loginPass">

          <input type="password" name="password" class="input_kuang item errortip" id="password" placeholder="密码" isRequired="true" autocomplete="off"/>

        </div>
        
        <div class="input-field clearfix" id="loginPass">

          <input style="width: 140px;" type="text" name="code" class="input_kuang item errortip" id="code" placeholder="验证码" isRequired="true" autocomplete="off"/>
          <img style="height: 37px;" src="code.php"/>

        </div>

        

        <div class="cooke">

			<span style="color: red;"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</span>

        </div>

        <div class="sub_log clearfix">

          <div class="sub_login flt_l"><input type="submit" class="no_bg" value="登录"/></div>

          

        </div>

      </form>

	  <div class="third">

      </div>

    </div>

    <div class="ano_log">

      <a class="mt_login" id="reg_link" href="regist.php" >立即注册</a>

    </div>

    <div class="ano_span_t"></div>

  </div>

</div>

<div class="footer">

  <ul class="links">

    <li class="copyright"><span>爱尚网络版权所有</span></li>

  </ul>

</div>

</body>
</html>

<?php }} ?>