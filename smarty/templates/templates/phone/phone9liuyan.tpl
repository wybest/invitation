<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0045)http://wedlaa.com/o/blessing.asp?wedID=style9 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">
    <meta http-equiv="keywords" content="手机请柬,电子请柬,Flash请柬,喜帖,二维码请柬,微信请柬">
    <meta http-equiv="description" content="免费获得电子请柬,免费获得手机请柬,免费体验手机请柬,免费下载电子请柬,免费制作电子请柬,免费制作Flash电子请柬样板,免费获得二维码请柬">
    <script language="JavaScript" src="js/jQuery1.7.2.js" type="text/javascript"></script>
    <title></title>
    <style>
        body{
            background-image:url(style/style16/img/bg6.jpg);
            background-repeat:repeat;
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
            text-align:center;
        }
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

        #inputlist{
            width:100%;
            padding-bottom:10px;
            padding-top:10px;
            background-image:url(style/style16/img/bgcolor2.png);
            background-repeat:repeat;

        }

        /*ul.input_test li{
        height:24px;
        list-style:none;
        text-align:center;
        }*/
        .input_out{
            /*height:16px;默认高度*/
            padding:2px 8px 0pt 2px;
            margin-top:10px;
            height:22px;
            width:80%;
            border:1px solid #CCC;
            background-color:#FFF;
        }
        .input_on{
            padding:2px 8px 0pt 2px;
            margin-top:10px;
            height:22px;
            width:80%;
            border:1px solid #999;
            background-color:#FFFFCC;
        }
        .subit{
            background-image:url(style/style16/img/subit.png);
            color:#FFF;
            width:90px;
            height:30px;
            border:1px;
            /*border-radius:5px;*/
        }
    </style></head>
<body>
<div id="head" style="width:100%; height:62px; background-image:url(style/style16/img/header_bg.png); background-repeat:repeat-x;">
    <div id="back" style=" z-index:10; float:left; width:67px; height:25px; margin-top:10px; margin-left:10px;"><img src="style/style16/img/back1.png"></div>
    <div id="ttext" style="position:absolute; z-index:20; float:left; width:100%;height:17px; left: 0px; top: 14px;color:#FFF; font-size:17px">祝福留言</div>
</div>
<script type="text/javascript">
    var back = document.getElementById("head");
    back.onclick = function() {self.location='phone.php?name={#$name#}@'};
</script>
<div id="inputlist">
    <form name="form1" id="contact_form"  method="post" style="display:block;">
        <input id="guest" class="input_out" name="guest" type="text" placeholder="您的名字" onfocus="this.className=&#39;input_on&#39;" onblur="this.className=&#39;input_out&#39;"><br>

        <select class="input_out" id="pnum" name="pnum">
            <option value="非常乐意，有1人参加">非常乐意，有1人参加</option>
            <option value="非常乐意，有2人参加">非常乐意，有2人参加</option>
            <option value="非常乐意，有3人参加">非常乐意，有3人参加</option>
            <option value="非常乐意，有4人参加">非常乐意，有4人参加</option>
            <option value="非常乐意，有5人参加">非常乐意，有5人参加</option>
            <option value="非常乐意，有6人参加">非常乐意，有6人参加</option>
            <option value="非常乐意，有7人参加">非常乐意，有7人参加</option>
            <option value="非常乐意，有8人参加">非常乐意，有8人参加</option>
            <option value="非常乐意，有9人参加">非常乐意，有9人参加</option>
            <option value="抱歉，无法参加">抱歉，无法参加</option>
        </select>
        <textarea class="input_out" id="message" name="message" placeholder="您的祝福" style="height:100px" onfocus="this.className=&#39;input_on&#39;" onblur="this.className=&#39;input_out&#39;"></textarea>
        <br><br>
        <input type="button" class="subit" value="提   交" onclick="FormCheck()">
        <p id="submit-button" style="padding: 0px;">
            <span id="bi_msg"></span>
        </p>
    </form>

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

<audio autoplay="autoplay" id="audio_play" loop="loop">
    <source src="{#$music#}" type="audio/mpeg">
</audio>
<script type="text/javascript">

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
<script language="javascript">

    function FormCheck()
    {

        var guest = $('#guest').val();
        var zf = $('#message').val();
        var pnum = $('#pnum').val();
        if(guest == ''){
            alert('请填写姓名');
            return;
        }
        if(zf == ''){
            alert('请填写留言');
            return;
        }

        var username='{#$name#}';

        $.post('save_shuju.php', {user:username, guest:encodeURIComponent(guest), zf:encodeURIComponent(zf), pnum:encodeURIComponent(pnum)}, function (data){
            $('#bi_msg').html(unescape(data)).show();
        });

    }
</script>

</body></html>