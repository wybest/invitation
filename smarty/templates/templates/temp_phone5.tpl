<!DOCTYPE html>
<!-- saved from url=(0022) -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>{#if $bigtitle #}{#$bigtitle#}{#else#}美男与美女婚宴邀约{#/if#}</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1,">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" type="text/css" href="style/style12/css">
    <link rel="stylesheet" type="text/css" href="style/style12/icons.css">
    <link rel="stylesheet" type="text/css" href="style/style12/jq.ui.css">
    <script type="text/javascript" charset="utf-8" src="style/style12/jq.mobi.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="style/style12/jq.ui.min.js"></script>

    <link href="style/style12/styles.css" type="text/css" rel="stylesheet">
    <link href="style/style12/photoswipe.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="style/style12/klass.min.js"></script>
    <script type="text/javascript" src="style/style12/code.photoswipe-3.0.5-dys.js"></script>

    <script src="./invit_files/api" type="text/javascript"></script><script type="text/javascript" src="./invit_files/getscript"></script>

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
</head>

<body>
<div id="jQUi"><div id="jQui_modal" style="overflow: hidden;">
    <div id="modalContainer" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms linear; transition: 0ms linear;"></div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>

<div id="header">
    <h1>{#$bigtitle#}</h1>
</div>
<div id="content" style="bottom: 0px; top: 60px;">

    <div id="main" class="panel" selected="true" data-load="loadedPanel" data-unload="unloadedPanel" data-tab="navbar_home" js-scrolling="yes" style="overflow: hidden; display: block;"><div class="jqmScrollPanel" js-scrolling="yes" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms linear; transition: 0ms linear;">
        <div class="wedbox">
            <div class="thedate">
            </div>
            <a class="meetus" href="#first" style="">&lt;&lt;打开喜帖</a> </div>
    </div>
    <div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <div id="first" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader_first" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <ul class="wednav">
                        <li><a href="#invitation" ><img src="style/style12/wednav1.png" alt="{#$title1#}"><br>
                                <span id="step2">{#if $title1#}{#$title1#}{#else#}爱的邀约{#/if#}</span></a></li>
                        <li><a href="#images" data-persist-ajax="true" data-refresh-ajax="true" title="_" data-pull-scroller="true"><img src="style/style12/wednav2.png" alt="{#$title2#}"><br>
                                <span id="step3">{#if $title2#}{#$title2#}{#else#}婚纱相册{#/if#}</span></a></li>
                        <li><a href="#story"><img src="style/style12/wednav3.png" alt="{#$title#}"><br>
                                <span id="step4">{#$title#}</span></a></li>
                        <li><a href="#signin"><img src="style/style12/wednav4.png" alt="{#$title3#}"><br>
                                <span id="step5">{#if $title3#}{#$title3#}{#else#}婚宴签到{#/if#}</span></a></li>
                        <li><a href="#map"><img src="style/style12/wednav6.png" alt="{#$title4#}"><br>
                                <span id="step6">{#if $title4#}{#$title4#}{#else#}婚宴地图{#/if#}</span></a></li>
                        <li><a href="#share"><img src="style/style12/wednav5.png" alt="{#$title5#}"><br>
                                <span id="step7">{#if $title5#}{#$title5#}{#else#}婚礼提醒{#/if#}</span></a></li>
                    </ul>
                    <div class="inner">
                        <div class="cbox">
                            <p style="margin:5px 0; text-align:center">
                                <a href="" target="_blank" style="color:#ba0684; font-weight:bold;">
                                    {#if $is_advert eq "1"#}
                                    {#if $advert #}<a href="http://{#$advert#}">{#$advert#}</a>{#else#}本服务由QQ:2378822906提供 {#/if#}
                                    {#/if#}
                                </a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <div id="invitation" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="cbox invititle">
                        <div class="invitext">
                            <p class="ip2">Wedding Invitation</p>
                            <p class="ip3"><span id="show_time2">{#if $show_time #}{#$show_time#}{#else#}2014年9月9日{#/if#}</span></p>
                            <p class="ip4">贵宾名字</p>
                            <p class="ip3">{#if $special_name #}<span>{#$special_name#}</span>{#else#}新郎:<span id="man">{#$man#}</span>&nbsp;&nbsp;&nbsp;&nbsp;新娘:<span id="women">{#$women#}</span> {#/if#}</p>
                            <p class="ip4">{#if $extends eq "none" #} {#elseif $extends #}{#$extends#}{#else#}举行结婚典礼 敬备喜宴 {#/if#}</p>
                            <p class="ip6">时间:<span id="mini_time">{#if $mini_time #}{#$mini_time#}{#else#}5:30入席{#/if#}</span></p>
                            <p class="ip6">地点:<span id="house">{#$house#}</span></p><br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <div id="images" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <ul id="Gallery" class="gallery">
                        {#section name=customer loop=$images #}
                        <li><a href="#" ><img src="marryimg/{#$images[customer]#}" alt=" "/></a></li>
                        {#/section#}
                    </ul>
                </div>
            </div>
        </div>
        <div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <!-- jqPlugins > jQ.carousel -->
    <div title="Carousel" class="panel" id="webcarousel" style="overflow:hidden;" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader">
        <div id="carousel_dots" style="text-align: center; margin:auto;  display : table; clear: both; position: relative; top: 90%; z-index: 200"> </div>
        <div id="carousel" style="display:block;height:80%;width:100%;">
        </div>
    </div>
    <div id="story" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="inner-header">
                        <div class="fl-left">
                            <h1>{#$title#}</h1>
                        </div>
                    </div>
                    <div class="cbox">
                        <p><div id="remindtitle"><span style="font-size: large; ">{#$message #}</span></div></p>
                    </div>
                </div>
            </div>
        </div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <div id="signin" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
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
        </div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <div id="map" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">

                    <div class="cbox">
                        <div class="map">
                            <div id="map_canvas7169" style="border:thin; text-align:center; border-style:solid; border-color:#999; margin-bottom:5px; width:100%; height:300px;">百度地图加载中。。。</div>
                            <p style="margin:5px 0">
                                <a href="http://api.map.baidu.com/marker?location={#$coordinate#},&zoom=10&title=地图&content={#$adress#}&output=html" target="_blank">
                                    <span id="map_desc7044">地址:{#$adress#}</span>
                                </a></p>
                            <p>[点击地图查看详细]</p>
                        </div>

                    </div>
                </div>
            </div>
        </div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <div id="share" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" data-footer="myfooter" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
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
                            <input type="hidden" id="time" value="{#if $lasttime #}{#$lasttime#}{#else#}2014/9/9 12:30{#/if#}"/>
                        </div>
                    </div>
                </div>
            </div>
        </div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
    <!-- 真诚鸣谢 -->
    <div id="thanks" class="panel" data-load="loadedPanel" data-unload="unloadedPanel" data-header="pageheader" js-scrolling="yes" style="overflow: hidden;"><div class="jqmScrollPanel" js-scrolling="yes">
            <div class="content-wrapper">
                <div class="content-top">&nbsp;</div>
                <div class="content">
                    <div class="cbox">
                        <a href="" target="_blank">
                            <img src="" style="width:100%">
                        </a>
                        <p style="margin:5px 0; text-align:center">鸣谢:
                            <a href="" target="_blank" style="color:#ba0684; font-weight:bold;">

                            </a></p>
                        <p style="margin:5px 0; text-align:center">[点击公司名称查看官方网站]</p>
                    </div>
                </div>
            </div>
        </div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div>
<header id="pageheader"> <a id="backButton" class="button" style="left:0px;left:auto;overflow:hidden">返回</a>
    <h1><div id="maintitlehtml"><span style="text-decoration: none; font-style: normal; font-size: 20px; font-weight: normal; ">{#if $bigtitle #}{#$bigtitle#}{#else#}美男与美女婚宴邀约{#/if#}</span></div></h1>
</header>
<header id="pageheader_first">
    <h1><div id="maintitlehtml"><span style="text-decoration: none; font-style: normal; font-size: 20px; font-weight: normal; ">{#if $bigtitle #}{#$bigtitle#}{#else#}美男与美女婚宴邀约{#/if#}</span></div></h1>
</header>
<footer id="myfooter"></footer>
<div id="navbar" jqmoldstyle="block" style="display: none;"></div><div id="menu" style="overflow: hidden;"><div id="menu_scroller" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms linear; transition: 0ms linear;"></div><div class="jqmScrollbar" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div><div id="jqmobiSelectModal" style="position: absolute; top: 0px; bottom: 0px; left: 0px; right: 0px; background-color: rgba(0, 0, 0, 0.701961); z-index: 200000; display: none; background-position: initial initial; background-repeat: initial initial;"><div id="jqmobiSelectBoxContainer" style="position: absolute; top: 8%; bottom: 10%; display: block; width: 90%; margin: auto auto auto 5%; background-color: white; color: black; border: 1px solid black; border-top-left-radius: 6px; border-top-right-radius: 6px; border-bottom-right-radius: 6px; border-bottom-left-radius: 6px; background-position: initial initial; background-repeat: initial initial;"><div id="jqmobiSelectBoxHeader" style="display:block;font-family:&#39;Eurostile-Bold&#39;, Eurostile, Helvetica, Arial, sans-serif;color:#fff;font-weight:bold;font-size:18px;line-height:34px;height:34px; text-transform:uppercase;text-align:left;text-shadow:rgba(0,0,0,.9) 0px -1px 1px;    padding: 0px 8px 0px 8px;    border-top-left-radius:5px; border-top-right-radius:5px; -webkit-border-top-left-radius:5px; -webkit-border-top-right-radius:5px;    background:#39424b;    margin:1px;"><div style="float:left;" id="jqmobiSelectBoxHeaderTitle"></div><div style="float:right;width:60px;margin-top:-5px"><div id="jqmobiSelectClose" class="button" style="width:60px;height:32px;line-height:32px;">Close</div></div></div><div id="jqmobiSelectBoxFix" style="position:relative;height:90%;background:white;overflow:hidden;width:100%;"><div id="jqmobiSelectBoxScroll" style="-webkit-transform: translate3d(0px, 0px, 0); -webkit-transition: 0ms linear; transition: 0ms linear;"></div><div class="jqselectscrollBarV" style="position: absolute; width: 5px; height: 20px; border-top-left-radius: 2px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; border-bottom-left-radius: 2px; opacity: 0; background-color: black; top: 0px; background-position: initial initial; background-repeat: initial initial;"></div></div></div></div></div>
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
        var endtime=new Date(document.getElementById("time").value);
        var nowtime = new Date();
        var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
        if(leftsecond<0){leftsecond=0;}
            __d=parseInt(leftsecond/3600/24);
        __h=parseInt((leftsecond/3600)%24);
        __m=parseInt((leftsecond/60)%24);
        __s=parseInt(leftsecond%60);
        __all = __d+"天 "+__h+"小时"+__m+"分"+__s+"秒";
        document.getElementById("lefttime").value=__all;
    }
    _fresh()
    setInterval(_fresh,1000);
</script>

<!-- 发送留言 -->

<script>
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
                $('#bi_msg').html(unescape(data)).show();
                setTimeout(function (){
                    $('#bi_msg').fadeOut();
                }, 3000);
            });
        });
    });
</script>

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
    var map7044 = null;
    var marker7044;

    //Baidu MAP Control
    map7044 = new BMap.Map("map_canvas7169");

    map7044.centerAndZoom(new BMap.Point({#if $coordinate #}{#$coordinate#}{#else#}116.404, 39.915{#/if#}),  15);                 // 初始化地?，?置中心?坐?和地???

    var opts = {type: BMAP_NAVIGATION_CONTROL_ZOOM}
            map7044.addControl(new BMap.NavigationControl(opts));



    var myIcon = new BMap.Icon("style/style9/ps/markers.gif", new BMap.Size(25,21));
    // ?建?注?象并添加到地?

    marker7044 = new BMap.Marker(new BMap.Point({#if $coordinate #}{#$coordinate#}{#else#}116.404, 39.915{#/if#}), {icon: myIcon}); // ?建?注
    map7044.addOverlay(marker7044);



    //baidu map

    function setMapCenter7044(lng, lat) {
        map7044.setCenter(new BMap.Point(lng,lat));

    }

    function setMapZoom7044(zoom) {
        map7044.setZoom(zoom);

    }

    function setMarkerPos7044(lng,lat) {
        //alert(pnt);
        marker7044.setPosition(new BMap.Point(lng,lat)) ;

    }


</script>
<script type="text/javascript">

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

</script>


<style>.jqselectscrollBarV{opacity:1 !important;}</style><div id="jQui_mask" class="ui-loader" style="z-index: 20000; display: none;"><span class="ui-icon ui-icon-loading spin"></span><h1>Loading Content</h1></div></body></html>