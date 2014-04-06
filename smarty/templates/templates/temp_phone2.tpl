<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0033)http://wedlaa.com/i/?wedID=style8 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">
    <meta http-equiv="keywords" content="手机请柬,电子请柬,Flash请柬,喜帖,二维码请柬,微信请柬">
    <meta http-equiv="description" content="免费获得电子请柬,免费获得手机请柬,免费体验手机请柬,免费下载电子请柬,免费制作电子请柬,免费制作Flash电子请柬样板,免费获得二维码请柬">
    <script src="style/桃色经典/image_files/jquery-latest.js"></script>
    <script language="JavaScript" src="js/jQuery1.7.2.js" type="text/javascript"></script>
    <link href="style/style9/style.css" rel="stylesheet" type="text/css">
    <style>
        #Loading{position:absolute;top:0;left:0;width:100%;height:400%;background:#ffffff;margin:0px 0 0 0px; z-index:200; display:none;}
  /* #Loading2{position:absolute;top:0;left:0;width:100%;height:100%;background:#F00;margin:0px 0 0 0px; z-index:199}*/
  #heart1{position:absolute;left:50%;top:13%;margin:-50px 0 0 -30px;}
        #Waiting{position:absolute; width:100px; text-align:center;left:50%;top:13%;margin:10px 0 0 -45px;}
        #mainbox{margin:0;}
        #copyright-text{ text-align:center; color:#FFF; margin:10px 10px 0px 10px;}
    </style>
    <title>{#$bigtitle#}</title>
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
<div id="Loading" style="display: none;">
    <div id="heart1">
        <img src="style/style9/ps/12.gif">
    </div>
    <div id="Waiting">
        <span style="text-align:center; color:#F00">
            幸福加载中...
        </span>
    </div>
</div>
<div id="main">
    <div id="top">
        <div id="headbox"><div id="headimg"><img id="invite_webimg" src="marryimg/{#$bigimage #}" width="73" height="73"></div></div>
        <div id="xinlang">{#$man#}</div>
        <div id="heart"></div>
        <div id="xinniang">{#$women#}</div>
        <div id="music"><img src="style/style9/ps/music.png"></div>
    </div>

    <div id="content">


        <ul id="Gallery" class="gallery">
            {#section name=customer loop=$images #}
            <li><a href="#" ><img src="marryimg/{#$images[customer]#}" alt=" "/></a></li>
            {#/section#}
        </ul>

        <div id="saytext">
            <div id="saytitle"><img name="" src="style/style9/title.png" alt=""></div>
            <div id="remindtitle"><span>{#$message #}</span></div>
        </div>

        <div id="textbox">
            <div id="text">
                <div id="texttxt"><span id="show_time1">{#if $show_time #}{#$show_time#}{#else#}2014年9月9日{#/if#}</span> <span id="mini_time">{#if $mini_time #}{#$mini_time#}{#else#}5:30入席{#/if#}</span></div>
                <div id="textimg1">
                    <div id="subtextimg"><img name="" src="style/style9/ps/1.png"></div>
                    <div id="subtexttxt">宴会时间</div>
                </div>

            </div>
            <div id="text">
                <div id="texttxt"><span id="house">{#$house#}</span></div>
                <div id="textimg2">
                    <div id="subtextimg"><img name="" src="style/style9/ps/2.png"></div>
                    <div id="subtexttxt">点击导航</div>
                </div>

            </div>
        </div>

        <div id="menubox">
            <div id="submenubox">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>

                        <td class="menu" id="menu"><div id="submenu1">填写祝福</div></td>
                        <td width="2%">&nbsp;</td>
                        <td class="menu" id="menu"><div id="submenu2">查看祝福</div></td>
                        <td width="2%">&nbsp;</td>
                        <td class="menu" id="menu"><div id="submenu3">{#if $title5#}{#$title5#}{#else#}婚礼提醒{#/if#}</div></td>
                    </tr>
                    </tbody></table>

            </div>
        </div>
    </div>
    <script language="javascript">
        function FormCheck()
        {
            alert(11);
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
            if(pnum == ''){
                alert('请填写参加人数');
                return;
            }

            var username='{#$name#}';

            $.post('save_shuju.php', {user:username, guest:encodeURIComponent(guest), zf:encodeURIComponent(zf), pnum:encodeURIComponent(pnum)}, function (data){
                $('#bi_msg').html(unescape(data)).show();
                setTimeout(function (){
                    $('#bi_msg').fadeOut();
                }, 3000);
            });
        }
    </script>


    <div id="bottom"></div>
</div>

<div id="overlay" style="position:absolute;width:100%;height:100%;background:#000000;display:none; opacity:0.7;filter:alpha(opacity=70);left:0;top:0;z-index:790"></div>
<div id="footer" style="width:100%;height:1px;z-index:899;position:relative;">
    <div id="mo" style="position:relative;height:300px;background:#FFF;top:0; margin:0 10px;display:none;border-radius:10px 10px 0 0;">
        <div id="close" style=" position:absolute;left:100%; margin:-8px 0 0 -16px;">
            <img src="style/style9/ps/close.png" width="24" height="24">
        </div>
        <div id="inputlist" style=" padding:10px; text-align:center;OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
            <span style="color:#F00;">请留下您最美的祝福</span><br>
            <input id="wedID" name="wedID" type="hidden" value="style8">
            <input id="guest" class="input_out" name="guest" type="text" placeholder="您的名字" onfocus="this.className=&#39;input_on&#39;" onblur="this.className=&#39;input_out&#39;">
            <input id="pnum" class="input_out" name="pnum" type="text" placeholder="出席人数（0为不出席）" onfocus="this.className=&#39;input_on&#39;" onblur="this.className=&#39;input_out&#39;">
            <script type="text/javascript">
                document.getElementById("pnum").onkeyup=function(){
                    var demovalue=this.value;
                    //alert(demovalue)
                    this.value=demovalue.replace(/\D/g,"");
                }
            </script>
            <textarea class="input_out" id="message" name="message" placeholder="您的祝福" style="height:100px" onfocus="this.className=&#39;input_on&#39;" onblur="this.className=&#39;input_out&#39;"></textarea>
            <br><br>
            <input type="button" class="subit" value="提   交" onclick="FormCheck()">
            <p id="submit-button" style="padding: 0px;">
                <span id="bi_msg"></span>
            </p>
        </div>
    </div>

    <div id="mo1" style="position:relative;height:90px;background:#FFF;top:0; margin:0 10px;display:none;border-radius:10px 10px 0 0;">
        <div id="close1" style=" position:absolute;left:100%; margin:-8px 0 0 -16px;">
            <img src="style/style9/ps/close.png" width="24" height="24">
        </div>
        <div id="inputlist" style=" padding:10px; text-align:center;OVERFLOW-Y: auto; OVERFLOW-X:hidden;">
            <span style="color:#F00;">倒计时还有：</span>
            <p>
            </p><div id="_lefttime" style="border:1px solid #777; width:100%; text-align:center; background-color:#FFC; font-size:22px; color:#F00;">265天23小时23分31秒</div>

            <input type="hidden" id="time" value="{#if $lasttime #}{#$lasttime#}{#else#}2014/9/9 12:30{#/if#}"/>
            <script language="JavaScript">
                function showtime()
                {
                    var endtime=new Date(document.getElementById("time").value);
                    var nowtime = new Date();
                    var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
                    if(leftsecond<0){leftsecond=0;}
                        var day1=Math.floor(leftsecond/(60*60*24));
                    var hour=Math.floor((leftsecond-day1*24*60*60)/3600);
                    var minute=Math.floor((leftsecond-day1*24*60*60-hour*3600)/60);
                    var second=Math.floor(leftsecond-day1*24*60*60-hour*3600-minute*60);

                    __all = day1+"天 "+hour+"小时"+minute+"分"+second+"秒";

                    document.getElementById("_lefttime").innerHTML=_all;
                }
                showtime()
                setInterval(showtime,1000);
            </script>
        </div>
    </div>

</div>


<div id="ad">
    <div id="copyright-text"></div>


</div>

<audio autoplay="autoplay" id="audio_play" loop="loop">
    <source src="" type="audio/mpeg">
</audio>
<script type="text/javascript">
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
    var LoadingDIV = document.getElementById("Loading");
    var music = document.getElementById("audio_play");
    music.pause();
    var mo = document.getElementById("mo");
    var mo1 = document.getElementById("mo1");
    var oLay = document.getElementById("overlay");
    var menu1 = document.getElementById('submenu1');
    var menu2 = document.getElementById('submenu2');
    var menu3 = document.getElementById('submenu3');
    var closebtn = document.getElementById('close');
    var closebtn1 = document.getElementById('close1');
    var textimgbtn=document.getElementById('textimg2');
    var musicdiv = document.getElementById("music");
    window.onload = function() {
        music.play();
        LoadingDIV.style.display = "none";
        $(document).ready(function(){
            if(/i(Phone|P(o|a)d)/.test(navigator.userAgent)){
                $(document).one('touchstart', function (e) {
                    if (music.paused) {
                        music.play();
                    }
                });
            }
        });
    }
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
    menu1.onclick = function() {movex('mo', -300)};
    menu2.onclick = function() {alert("这个操作在手机上显示哦")};
    menu3.onclick = function() {movex('mo1', -90)};
    closebtn.onclick = function() {movex2('mo', 0)};
    closebtn1.onclick = function() {movex2('mo1', 0)};
    textimgbtn.onclick = function() {self.location='map.php?user={#$userID#}'};
    function movex(obj, ty) {
        var obj = typeof(obj) == "string" ? document.getElementById(obj) : obj;
        oLay.style.height = (document.height+8) + "px";
        obj.style.display = "block";
        oLay.style.display = "block";
        clearInterval(dt);
        function huanchong() {
            var oly = parseInt(obj.style.top);
            if (Math.abs(oly - ty) < 5) {
                obj.style.top = ty + "px";
                clearInterval(dt)
            } else {
                oly += (ty - oly) * 0.3;
                obj.style.top = oly + "px"
            }
        }
        var dt = setInterval(huanchong, 10)
    }
    function movex2(obj, ty) {
        var obj = typeof(obj) == "string" ? document.getElementById(obj) : obj;
        clearInterval(dt);
        function huanchong() {
            var oly = parseInt(obj.style.top);
            if (Math.abs(oly - ty) < 5) {
                obj.style.display = "none";
                oLay.style.display = "none";
                obj.style.top = ty + "px";
                clearInterval(dt)
            } else {
                oly += (ty - oly) * 0.2;
                obj.style.top = oly + "px"
            }
        }
        var dt = setInterval(huanchong, 20)
    }
    // movex('mo',-200);
</script>



</body></html>