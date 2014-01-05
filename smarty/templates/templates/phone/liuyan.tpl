<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)http://wedlaa.com/i/blessing.asp?wedID=style8 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">
    <meta http-equiv="keywords" content="手机请柬,电子请柬,Flash请柬,喜帖,二维码请柬,微信请柬">
    <meta http-equiv="description" content="免费获得电子请柬,免费获得手机请柬,免费体验手机请柬,免费下载电子请柬,免费制作电子请柬,免费制作Flash电子请柬样板,免费获得二维码请柬">
    <title>祝福留言</title>
    <link href="style/style9/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" src="js/jQuery1.7.2.js" type="text/javascript"></script>
    <style>


        .huihan_list {
            width: 95%;
            height: auto;
            margin: 5px auto;
            border-bottom: 1px solid #CCC;
            background: #fff;
        }

        .huihan_top {
            width: 100%;
            height: 40px;
            float: left;
            background-color: lightpink;
        }


        .huihan_name {
            width: auto;
            height: 20px;
            font-weight: 700;
            float: left;
            font-size: 16px;
            margin: 12px 10px 15px;
        }

        .huihan_time {
            width: auto;
            height: 20px;
            float: right;
            font-size: 12px;
            color: #999;
            margin: 12px 12px 15px;
        }

        .huihan_text {
            width: auto;
            height: auto;
            padding: 10px 0px 30px;
            font-size: 16px;
            border-radius: 5px;
            margin: 5px 12px 0px 40px;
        }
    </style>

    <script>(function listenerTest() {
            window.addEventListener("message", function (event) {
                if (event.source !=  window) return;

                if (event.data.type && (event.data.type == "GET_VAR")) {
                    var var_name = event.data.name, name, val = null;
                    for (var i = 0, l = var_name.length; i < l; i++) {
                        if (window[var_name[i]] != null) {
                            val = window[var_name[i]];
                            name = var_name[i];
                            break;
                        }
                    }

                    if (var_name[0] == "_SPM_a" || var_name[0] == "_SPM_b") {
                        name = var_name[0];
                    }
                    //val = var_name ? window[var_name] : null;
                    console.log(var_name, val);
                    window.postMessage({
                        type: "SEND_VAR",
                        name: name,
                        value: val
                    }, "*");
                }
            });
        })();</script></head>
<body>

<div id="main">
    <div id="top">
        <div id="headbox"><div id="headimg"><img src="marryimg/{#$bigimage #}" width="73" height="73"></div></div>
        <div id="xinlang">{#$man#}</div>
        <div id="heart"></div>
        <div id="xinniang">{#$women#}</div>
        <div id="music"><img src="style/style9/ps/music.png"></div>
    </div>

    {#section name=customer loop=$shuju_array #}
    <div class="huihan_list">
        <div class="huihan_top">
            <div class="huihan_name">{#$shuju_array[customer]->name#}:{#$shuju_array[customer]->pnum#}</div>
            <div class="huihan_time">{#$shuju_array[customer]->time#}</div>
        </div>
        <div class="huihan_text">{#$shuju_array[customer]->bless#}</div>
    </div>
    {#/section#}


</div>

<audio autoplay="autoplay" id="audio_play" loop="loop">
    <source src="mp3folder/{#$music#}" type="audio/mpeg">
</audio>
<script type="text/javascript">
    var music = document.getElementById("audio_play");
    var musicdiv = document.getElementById("music");

    (function(window, $, PhotoSwipe){
        $(document).ready(function(){
            music.play();
        });
    }(window, window.jQuery));

    var music_con = true;
    musicdiv.onclick = function() {
        if (music_con) {
            music.pause();
            musicdiv.innerHTML = "<img src='style/style9/ps/musicclose.png'>";
            music_con = false;
        } else {
            music.play();
            musicdiv.innerHTML = "<img src='style/style9/ps/music.png'>";
            music_con = true;
        }
    }
</script>


</body></html>