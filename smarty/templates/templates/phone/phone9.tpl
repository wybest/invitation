<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0033)http://wedlaa.com/o/?wedID=style9 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">
    <meta http-equiv="keywords" content="手机请柬,电子请柬,Flash请柬,喜帖,二维码请柬,微信请柬">
    <meta http-equiv="description" content="免费获得电子请柬,免费获得手机请柬,免费体验手机请柬,免费下载电子请柬,免费制作电子请柬,免费制作Flash电子请柬样板,免费获得二维码请柬">

    <link href="style/style16/css.css" rel="stylesheet" type="text/css">
    <title>{#$bigtitle#}</title>
    <style>
        #Loading{position:absolute;top:0;left:0;width:100%;height:400%;background:#ffffff;margin:0px 0 0 0px; z-index:999; display:none;}
  #heart_{position:absolute;left:50%;top:13%;margin:-50px 0 0 -30px;}
        #Waiting{position:absolute; width:100px; text-align:center;left:50%;top:13%;margin:10px 0 0 -45px;}
    </style></head>


<body>
<div id="Loading" style="display: none;">
    <div id="heart_">
        <img src="style/style16/12.gif">
    </div>
    <div id="Waiting">
        <span style="text-align:center; color:#F00">
            幸福加载中...
        </span>
    </div>
</div>
<div id="container">
    <div id="header">
        <table class="headertable" cellpadding="0" cellspacing="0">
            <tbody><tr>
                <td class="headertable_left"></td>
                <td class="headertable_middle">
                    <table id="name" cellpadding="0" cellspacing="0">
                        <tbody><tr><td id="Bridegroom" width="35%" align="right">{#$man#}</td><td width="30%"></td><td id="Bride" align="left" width="35%">{#$women#}</td></tr>
                        </tbody></table>
                </td>
                <td class="headertable_right"></td>
            </tr>
            </tbody></table>
    </div>
</div>

<div id="bodypic">
    <div id="weddingpic"><img src="marryimg/{#$bigimage #}" border="0"></div>
    <div id="weddinginfo">
        <table id="weddinginfo" cellpadding="0" cellspacing="0">
            <tbody><tr>
                <td id="weddingtime" align="right">
                    <table id="weddingtime1" cellpadding="0" cellspacing="0">
                        <tbody><tr><td id="weddingtime2" rowspan="2"></td><td id="weddingtime5">{#$mini_time#}</td><td id="weddingtime3" rowspan="2"></td></tr>
                        <tr><td id="weddingtime5" align="center">{#$show_time#}</td></tr>
                        <tr><td id="weddingtime5" colspan="3" align="center">{#if $extends eq "none" #} {#elseif $extends #}{#$extends#}{#else#}结婚典礼时间{#/if#}</td></tr>
                        </tbody></table>
                </td>
                <td id="weddingline"></td>
                <td id="weddingplace" align="left">
                    <div id="weddingplace3">
                        <div id="weddingplace1">地点</div>
                        <div id="weddingplace2">{#$adress#}</div>
                    </div>
                </td>
            </tr>
            </tbody></table>
    </div>
</div>


<div id="bodybutton">
    <table id="bodybutton1" cellpadding="0" cellspacing="0">
        <tbody><tr>
            <td><a href="phone9img.php?user={#$name#}"><img src="style/style16/button_pic.png"></a></td>
            <td><a href="phone9liuyan.php?user={#$name#}"><img src="style/style16/button_message.png"></a></td>
            <td><a href="phone9map.php?user={#$name#}"><img src="style/style16/button_accpet.png"></a></td>
        </tr>
        </tbody></table>
</div>



<div id="footer">
    <table id="bodybutton1" width="92%" cellpadding="7" cellspacing="0"><tbody><tr>
            <!--  <td width="30%" align="left" valign="middle"><a onClick="openShareDiv('share_div')" ><img src="themes/zfm_web/img/button_share.png" /></a></td>-->
            <td align="center" valign="middle">
                {#if $is_advert eq "1"#}
                {#if $advert #}<a href="http://{#$advert#}">{#$advert#}</a>{#else#}本服务由QQ:2378822906提供 {#/if#}
                {#/if#}
            </td>
        </tr></tbody></table>
    <div id="share_div" style=" display:none; position:absolute; left: 0px; top: 0px; width: 100%; height:100%; z-index:1001; background-image:url(themes/zfm_web/img/bgcolor4.png); background-repeat:repeat;">
        <div style=" position:absolute; top:10px; right:30px; "><img src="style/style16/arrow1.png"></div>
        <div style=" position:absolute; top:10px; left:10px;"><a onclick="closeShareDiv(&#39;share_div&#39;)"><img src="style/style16/close.png"></a></div>
    </div>

    <audio autoplay="autoplay" id="audio_play" loop="loop">
        <!--source src="http://www.vipaa.com/music/1010467805.mp3" type="audio/mpeg" /-->
        <source src="mp3folder/{#$music#}" type="audio/mpeg">
    </audio>

    <script type="text/javascript">
        var LoadingDIV = document.getElementById("Loading");
        window.onload = function() {
            LoadingDIV.style.display = "none";
            $(document).ready(function(){
                if(/i(Phone|P(o|a)d)/.test(navigator.userAgent)){
                    $(document).one('touchstart', function (e) {
                        var music = document.getElementById("audio_play");
                        if (music.paused) {
                            music.play();
                        }
                    });
                }
            });
        }
    </script>






    <script language="javascript" type="text/javascript">
        var contentModel = {
            "img_url": "http://www.wndxf.com/invitation/marryimg/{#$bigimage#}",
            "title": "{#$bigtitle#}",
            "src": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#} "
        };
    </script>
    <script language="JavaScript" src="style/style16/share.js" type="text/javascript"></script>
</div>



</body></html>