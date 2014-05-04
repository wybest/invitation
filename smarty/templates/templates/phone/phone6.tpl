<!DOCTYPE html>
<!-- saved from url=(0022)http://dzxt.cn/1621247 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>{#$bigtitle#}</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Parisienne">
    <link rel="stylesheet" type="text/css" href="style/style13/css">
    <link rel="stylesheet" type="text/css" href="style/style13/icons.css">
    <link rel="stylesheet" type="text/css" href="style/style13/jq.ui.css">

    <script type="text/javascript" charset="utf-8" src="style/style13/jq.mobi.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="style/style13/jq.ui.min.js"></script>

    <link href="style/style13/styles.css" type="text/css" rel="stylesheet" />
    <link href="style/style13/photoswipe.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="style/style13/klass.min.js"></script>
    <script type="text/javascript" src="style/style13/code.photoswipe-3.0.5-dys.js"></script>
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
    #heart{position:absolute;left:50%;top:13%;margin:-50px 0 0 -30px;}
</style>
<body>
<div id="jQUi">
    <div id="splashscreen" class='ui-loader'><br><br> <img src=""> <br>
        <br>
        <h1>幸福加载中<br>
            请稍等...</h1>
    </div>
    <div id="header">
        <h1>{#$bigtitle#}</h1>
    </div>
    <div id="content">
        <div id="main" class="panel" selected="true" data-load="loadedPanel" data-unload="unloadedPanel" data-tab="navbar_home"  style="z-index:99999">
            <div class="wedbox">
                <a class="meetus" href="#first" style="">&gt;&gt;</a> </div>
        </div>
        <div  id="first" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader_first">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <ul class="wednav">
                        <li><a href="#invitation" ><img src="style/style13/wednav1.png" alt="{#$title1#}"><br>
                                {#if $title1#}{#$title1#}{#else#}爱的邀约{#/if#}</a></li>
                        <li><a href="showimgs.php?user={#$name#}" data-persist-ajax="true" data-refresh-ajax="true" title="_" data-pull-scroller="true"><img src="style/style13/wednav2.png" alt="{#$title2#}"><br>
                                {#if $title2#}{#$title2#}{#else#}婚纱相册{#/if#}</a></li>
                        <li><a href="#story"><img src="style/style13/wednav3.png" alt="{#$title#}"><br>
                                {#$title#}</a></li>
                        <li><a href="#signin"><img src="style/style13/wednav4.png" alt="{#$title3#}"><br>
                                {#if $title3#}{#$title3#}{#else#}婚宴签到{#/if#}</a></li>
                        <li><a href="#map"><img src="style/style13/wednav6.png" alt="{#$title4#}"><br>
                                {#if $title4#}{#$title4#}{#else#}婚宴地图{#/if#}</a></li>
                        <li><a href="#share"><img src="style/style13/wednav5.png" alt="{#$title5#}"><br>
                                {#if $title5#}{#$title5#}{#else#}婚礼提醒{#/if#}</a></li>
                    </ul>
                    <div class="inner">
                        <div class="cbox">
                            <p style="margin:5px 0; text-align:center">
                                <a href="" target="_blank" style="color:#ba0684; font-weight:bold;">
                                    {#if $is_advert eq "1"#}
                                    {#if $advert #}{#$advert#}{#else#}本服务由QQ:2378822906提供 {#/if#}
                                    {#/if#}
                                </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="invitation" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="cbox invititle">
                        <div class="invitext">
                            <p class="ip2">Wedding Invitation</p>
                            {#if $vip != "none"#}
                            <p class="ip4">{#$vip#}</p>
                            {#/if#}
                            <p class="ip3"><span>{#$show_time#}</span></p>
                            <p class="ip3">{#if $special_name #}<span>{#$special_name#}</span>{#else#}新郎:<span class="">{#$man#}</span>&nbsp;&nbsp;&nbsp;&nbsp;新娘:<span>{#$women#}</span> {#/if#}</p>
                            <p class="ip4">{#if $extends eq "none" #} {#elseif $extends #}{#$extends#}{#else#}举行结婚典礼 敬备喜宴 {#/if#}</p>
                            <p class="ip6">时间:<span>{#$mini_time#}</span></p>
                            <p class="ip6">地点:<span>{#$house#}</span></p><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- jqPlugins > jQ.carousel -->
        <div title="Carousel" class="panel" id="webcarousel"  style="overflow:hidden;"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
            <div id="carousel_dots" style="text-align: center; margin:auto;  display : table; clear: both; position: relative; top: 90%; z-index: 200"> </div>
            <div id="carousel" style="display:block;height:80%;width:100%;">
            </div>
        </div>
        <div id="story" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="inner-header">
                        <div class="fl-left">
                            <h1>{#$title#}</h1>
                        </div>
                    </div>
                    <div class="cbox">
                        {#$message #}
                    </div>
                </div>
            </div>
        </div>
        <div id="signin" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="inner-header">
                        <div class="fl-left">
                            <h1>{#$title3#}</h1>
                        </div>
                    </div>
                    <div class="cbox">
                        <form  method="post" id="contact_form">
                            <div>
                                <input id="guest" type="text" name="guest" placeholder="姓名" class="textbox">
                                <br>
                                <label>
                                    您是否参加:
                                    <select id="pnum" name="pnum">
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
                                    </select></label><br>
                                <br>
                                <textarea name="message" id="message" placeholder="请输入您的祝福信息" required="" data-minlength="10"></textarea>
                            </div>
                            <div class="clear"></div>
                            <p id="cf_submit_p" class="submit-button">
                                <input type="button" id="send_message" value="发送祝福">
                            </p>
                            <div id="sendmsg_success" class="success">您的留言已经成功发送.</div>
                            <div class="clear"></div>
                        </form>
                    </div>
                </div>
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
        <div id="map" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">

                    <div class="cbox">
                        <div class="map">
                            <div id="map_canvas7169" style="border:thin; text-align:center; border-style:solid; border-color:#999; margin-bottom:5px; width:100%; height:300px;">百度地图加载中。。。</div>
                        </div>
                        <p style="margin:5px 0">
                                地址:{#$adress#}</p>
                        <p><style type="text/css">
                                a#guide_bd_btn{display:inline-block;width:150px;height:40px;overflow:hidden;padding-left:50px;background:url('style/style24/guide_bg.gif') no-repeat left #01BD9A;border-radius:2px;-webkit-border-radius:2px;text-align:center;font:bolder 18px/40px '微软雅黑';color:#fff;text-decoration:none;}
                            </style>
                        <p id="maper"></p></p>
                    </div>
                </div>
            </div>
        </div>
        <div id="share" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" data-footer="myfooter">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="inner-header">
                        <div class="fl-left">
                            <h1>{#$title5#}</h1>
                        </div>
                    </div>
                    <div class="cbox">
                        <div style="font-size:14px; margin-bottom:5px">倒计时还有:</div>
                        <div style="width:100%" align="center">
                            <input style="border:1px solid #777; background-color:#FFC; font-size:22px; color:#777;" type="text" id="lefttime"  size="20">
                            <div style="font-size:12px; margin-top:5px"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 真诚鸣谢 -->
        <div id="thanks" class="panel"  data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="cbox">
                        <a href="" target="_blank">
                            <img src="" style="width:100%">
                        </a>
                        <p style="margin:5px 0; text-align:center">鸣谢:
                            {#if $is_advert eq "1"#}
                            {#if $advert #}{#$advert#}{#else#}本服务由QQ:2378822906提供 {#/if#}
                            {#/if#}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <header id="pageheader"> <a id="backButton"  class='button' style='left:0px;left:auto;overflow:hidden'>返回</a>
        <h1>{#$bigtitle#}</h1>
    </header>
    <header id="pageheader_first">
        <h1>{#$bigtitle#}</h1>
    </header>
    <footer id="myfooter">
    </footer>
</div>
<script>
    $(function (){
        $.ui.removeFooterMenu();
    });
    /*
     $(function (){
     $.ui.removeFooterMenu();
     setTimeout(function (){
     jq("#splashscreen").remove();
     },4000);
     });
     */
    function _fresh()
    {
        var endtime=new Date("{#$lasttime#}");
        var nowtime = new Date();
        var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
        if(leftsecond<0){leftsecond=0;}
            var day1=Math.floor(leftsecond/(60*60*24));
        var hour=Math.floor((leftsecond-day1*24*60*60)/3600);
        var minute=Math.floor((leftsecond-day1*24*60*60-hour*3600)/60);
        var second=Math.floor(leftsecond-day1*24*60*60-hour*3600-minute*60);

        __all = day1+"天 "+hour+"小时"+minute+"分"+second+"秒";
        document.getElementById("lefttime").value=__all;
    }
    _fresh()
    setInterval(_fresh,1000);
</script>

<!-- 发送留言 -->

<script>
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
    var user_id = 1621247;
    var is_go = 1; //去
    $(function (){
        $('#send_message').bind('click',function (){
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
                $('#guest').val('');
                $('#message').val('');
                $('#sendmsg_success').html(unescape(data)).show();
            });
        });
    });
</script>
<!-- 播放音乐 -->

<script type="text/javascript" src="style/style13/video.js"></script>
<script type="text/javascript">

    function initialize(){
        var map = new BMap.Map("map_canvas7169");//在指定的容器内创建地图实例
        map.setDefaultCursor("map_canvas7169");//设置地图默认的鼠标指针样式
        map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
        map.centerAndZoom(new BMap.Point({#$coordinate#}), 15);
        map.addControl(new BMap.NavigationControl({
            anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_SMALL
        }));
        map.panBy({#$coordinate#})

        var pt = new BMap.Point({#$coordinate#});
        var myIcon = new BMap.Icon("style/style9/ps/markers.gif", new BMap.Size(25,21));
        var marker2 = new BMap.Marker(pt,{
            icon:myIcon
        });// 创建标注
        map.addOverlay(marker2);// 将标注添加到地图中
    }

    function loadBaiduMap() {
        var script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = 'http://api.map.baidu.com/api?v=1.5&ak=309d55cca0d6814ffb4668758d817124&callback=initialize';
        document.body.appendChild(script);

        //var script1 = document.createElement('script');
        //script1.type = 'text/javascript';
        //script1.src = 'http://api.map.baidu.com/geocoder/v2/?ak=309d55cca0d6814ffb4668758d817124&callback=renderOption&output=json&address={#$adress#}&city=';
        //document.body.appendChild(script1);
        renderOption(null);
    }

    function renderOption(response) {
        var html = '';
//
//    if (response.status ) {
//        var text = "无正确的返回结果:\n";
//        document.getElementById('maper').innerHTML = text;
//        return;
//    }
//    var location = response.result.location;

        var location = '{#$coordinate#}';
        //location.lat +','+location.lng

        html = '<a href="http://api.map.baidu.com/marker?location='+ location.split(",")[1] +','+location.split(",")[0] +'&title=宴会位置导航&content={#$adress#}&output=html" title="点击一键导航" id="guide_bd_btn">点击一键导航</a>';
        document.getElementById('maper').innerHTML = html;
        return;
    }

    $(document).ready(function(){

        if(/i(Phone|P(o|a)d)/.test(navigator.userAgent)){
            $(document).one('touchstart', function (e) {
                var music = document.getElementById("audio_play");
                if (music.paused) {
                    music.play();
                }
            });
        }
        setTimeout(function(){ loadBaiduMap(); },500);
    });
</script>
<audio autoplay="autoplay" id="audio_play" loop="loop">
    <source src="{#$music#}" type="audio/mpeg" />
</audio>
<!-- 微信分享 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="style/style13/weixin_share.js"></script>
<script>
    var contentModel = {
        "img_url": "http://www.wndxf.com/invitation/marryimg/{#$bigimage#}",
        "title": "{#$bigtitle#}",
        "src": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#}"
    };
</script>


<div style="display:none">
    <script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F0b49c04696fdc8117195c0732c080ea4' type='text/javascript'%3E%3C/script%3E"));
    </script>
</div>
</body>
</html>