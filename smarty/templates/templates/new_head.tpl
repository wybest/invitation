<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>手机微信电子请帖</title>
<meta name="keywords" content="手机微信电子请帖" />

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="http://cdn.bootcss.com/twitter-bootstrap/3.0.1/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="intro/introjs.min.css"/>
  <script type="text/javascript" src="intro/intro.min.js"></script>

    <link rel="stylesheet" href="example_files/jquery-ui-1.8.18.custom.full_leo.css" type="text/css" media="screen" charset="utf-8">

    <script type="text/javascript" src="example_files/jquery-latest.js"></script>
    <script type="text/javascript" src="example_files/jquery-ui-1.8.18.full.min.js"></script>

<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
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
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}

    function aa(){
            $('#iframepage').contents().find('html, body').animate({scrollTop: 0});
            var page = 'new_invit_info.php';
            $dialog_photo = $('<div></div>')
                    .html('<iframe frameborder="0" border="0" cellspacing="0" style="border: none; " src="' + page + '" width="100%" height="100%"></iframe>')
                    .dialog({
                        autoOpen: false,
                        modal: false,
                        //position: "right",
                        width: 1000,
                        height: 650,
                        title: "请柬信息编辑",
                        buttons: {
                            关闭: function() {
                                $( this ).dialog( "close" );
                            }
                        }
                    });
            $dialog_photo.dialog('open');
    }

</script>
</head>
<body>

<div id="templatemo_wrapper_outter">

	<div id="templatemo_wrapper_inner">
    
    <div id="templatemo_menu">
    
        <ul style="width: 90%">

            <li style="float:left;margin-top:30px">
                <span style="font-size: 30px;margin-left: 70px;">绝对正品，假一赔十，放心安全使用，盗版必究</span>
            </li>

				<style>
				.J_login_before{background:#2C2C2C;border: 1px solid #171717;width:24px;padding:0 5px 0 25px;position:relative;height:20px;line-height:20px;}
				.J_login_after{background:#2C2C2C;border: 1px solid #171717;padding:0 5px 0 22px;position:relative;height:20px;line-height:20px;}
				.J_login i{background:url(http://img03.taobaocdn.com/tps/i3/T1bPmiXjdNXXbbz3Pc-27-77.png) 0 -62px no-repeat;display:inline-block;width:13px;height:13px;vertical-align:middle;position:absolute;top:3px;left:5px;}
				.J_login a{color:#717171 !important;}
				.J_login a:hover{color:#fff !important;}
                </style>
					<li style="float:right;margin-top:30px">
									<div class="J_login J_login_after"><i></i><span style="color: white;">{#$name#}</span> </div></li>
				</ul>  	
    
    </div> <!-- end of templatemo_menu -->
    
    <div id="templatemo_content_wrapper">
    
    	<div id="templatemo_sidebar_wrapper">
    
            <div id="templatemo_sidebar_top"></div>
            <div id="templatemo_sidebar">
            
                <h2>请柬DIY</h2>
                
                <ul class="categories_list nav nav-pills nav-stacked">
                    <li {#if $active eq "1"#}class="active"{#/if#}><a href="javascript:aa()">请柬内容设置</a></li>
                    <li {#if $active eq "2"#}class="active"{#/if#}><a href="mould_pc.php">电脑请柬风格设置</a></li>
                    <li {#if $active eq "3"#}class="active"{#/if#}><a href="weixin.php">微信名片设置</a></li>
                </ul>
                
                <div class="cleaner_h30"></div>
                
                <h2>请柬二维码地址</h2>
            
               <ul class="categories_list  nav nav-pills nav-stacked">
                    <li {#if $active eq "4"#}class="active"{#/if#}><a href="invitadress.php">请柬通用地址</a></li>
                    <li {#if $active eq "5"#}class="active"{#/if#}><a href="invitvipadress.php">请柬贵宾地址</a></li>
                </ul>
                
                <div class="cleaner_h30"></div>
                
                 <h2>亲友回函</h2>
            
               <ul class="categories_list  nav nav-pills nav-stacked">
                    <li {#if $active eq "6"#}class="active"{#/if#}><a href="receipt.php">查看回函</a></li>
                </ul>
                
                <div class="cleaner_h10"></div>
                
            </div>
            <div id="templatemo_sidebar_bottom"></div>
        
        </div>
    
		<div id="templatemo_content">
