<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>{#$bigtitle#}</title>
    <meta name="description" content="{#$bigtitle#}">
    <meta name="Author" content="Zero">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="telephone=no" name="format-detection">
    <meta name="generator" content="bd-mobcard">
    <link rel="stylesheet" type="text/css" href="style/style28/eic.css">
    <script type="text/javascript" src="style/style28/j.js"></script>
    <link rel="stylesheet" href="style/style24/discuz.css">
<body id="color_a">
<div id="myHtmlArea"><!--SPLIT--><div id="mask_bg"></div><div class="body" id="invite">
        <div class="infos">
            <p class="etime">{#$show_time#}</p>
            <h1>举行结婚典礼</h1>
            <p class="some_notes">带着满心欢喜邀请您共享这份喜悦</p>
            <h2>{#$man#} &amp; {#$women#}</h2>
            <p class="some_notes">您的光临和祝福是我们最大的荣耀</p>
            <table class="td" cellspacing="10">
                <tbody><tr>
                    <td>席设：{#$house#}</td>
                </tr>
                <tr>
                    <td>时间：{#$mini_time#}</td>
                </tr>
                </tbody></table>
        </div>
    </div>
    <!--SPLIT-->
</div>
<div id="footer" style="clear:both">
    <table class="login_sta">
        <tbody><tr>
            <td></td>
            <td align="right"><span id="to_top" onclick="scoll_bar()">返回顶部</span></td>
        </tr>
        </tbody></table>
    <script type="text/javascript">
        function scoll_bar(){
            $('body,html').animate({scrollTop:0},100);
        }
    </script>
    <p>&nbsp;<br>&nbsp;</p>
</div>
<script type="text/javascript" src="style/style28/lhgdialog.min.js"></script>
<script type="text/javascript" src="style/style28/mobile_eic_01.js"></script>
<div id="menus_area_this">
    <div id="x_menus">
        <div id="menu_bg"><img src="style/style28/menu-1.png" alt="menu"></div>
        <div id="menu_text">
            <table>
                <tbody><tr>
                    <th width="20%"><a class="sy" href="#"></a></th>
                    <th width="20%"><a class="qj" href="#"></a></th>
                    <th width="20%"><a class="zp" href="#"></a></th>
                    <th width="20%"><a class="dt" href="#"></a></th>
                    <th width="20%"><a class="zf" href="#"></a></th>
                </tr>
                </tbody></table>
        </div>
    </div>
    <script type="text/javascript">
        (function(){
            $('#x_menus a').click(function(){
                if (!$(this).parent().hasClass('cur')){
                    $('#x_menus tr th').removeClass('cur');
                    $(this).parent().addClass('cur');
                }
            });
            var ths=document.getElementById('x_menus').getElementsByTagName('th');
            for (var i=0;i<5 ;i++ ){
                ths[i].addEventListener('touchstart',function(){
                    this.className='hover';
                });
                ths[i].addEventListener('touchend',function(){
                    var c=this.className.replace('hover','');
                    this.className=c;
                });
            }
        })();
    </script>
</div>
<script type="text/javascript">
    var local=window.location.href;
    window.shareData = {
        "imgUrl": "http://www.wndxf.com/invitation/marryimg/{#$bigimage#}",
        "timeLineLink":local,
        "sendFriendLink": local,
        "weiboLink":local,
        "tTitle": "{#$bigtitle#}",
        "tContent": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#} ",
        "fTitle": "{#$bigtitle#}",
        "fContent": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#} ",
        "wContent": "{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#} "
    };
    document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
        // 发送给好友
        WeixinJSBridge.on('menu:share:appmessage', function (argv) {
            WeixinJSBridge.invoke('sendAppMessage', {
                "img_url": window.shareData.imgUrl,
                "img_width": "200",
                "img_height": "200",
                "link": window.shareData.sendFriendLink,
                "desc": window.shareData.fContent,
                "title": window.shareData.fTitle
            }, function (res) {
                hs_guide('none');
                _report('send_msg', res.err_msg);
            })
        });

        // 分享到朋友圈
        WeixinJSBridge.on('menu:share:timeline', function (argv) {
            WeixinJSBridge.invoke('shareTimeline', {
                "img_url": window.shareData.imgUrl,
                "img_width": "200",
                "img_height": "200",
                "link": window.shareData.timeLineLink,
                "desc": window.shareData.tContent,
                "title": window.shareData.tTitle
            }, function (res) {
                hs_guide('none');
                _report('timeline', res.err_msg);
            });
        });

        // 分享到微博
        WeixinJSBridge.on('menu:share:weibo', function (argv) {
            WeixinJSBridge.invoke('shareWeibo', {
                "content": window.shareData.wContent,
                "url": window.shareData.weiboLink,
            }, function (res) {
                hs_guide('none');
                _report('weibo', res.err_msg);
            });
        });
    }, false);
</script>
<link href="style/style28/photoswipe.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/style28/klass.min.js"></script>
<script type="text/javascript" src="style/style28/code.photoswipe.jquery-3.0.4.min.js"></script>
<script src="style/style28/api" type="text/javascript"></script><script type="text/javascript" src="style/style28/getscript"></script><link rel="stylesheet" type="text/css" href="style/style28/bmap.css">
<script type="text/javascript">
    function phote_func(){
        var myPhotoSwipe = $("#photoarea img").photoSwipe({ enableMouseWheel: false , enableKeyboard: false,autoStartSlideshow:true,getImageSource:function(obj){return obj.src;}});
    }
    function map_load(){
        var map = new BMap.Map("maparea1");
        var point = new BMap.Point({#$coordinate#});
        map.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT, offset: new BMap.Size(10, 10)}));
        map.centerAndZoom(point, 12);
        var sHTML = "<div class='mapinfo'><p>地址：{#$house#}</p></div><p>地图导航：<a target='_blank' href='http://api.map.baidu.com/marker?location={#$coordinate#}&title=宴会位置导航&content={#$house#}&output=html' title='点击进入导航界面' style='color:#36f'>点击进入导航界面&gt;&gt;</a></p>";
        var infoWindow = new BMap.InfoWindow(sHTML);
        map.openInfoWindow(infoWindow,point);
        var marker = new BMap.Marker(point);
        map.addOverlay(marker);
        marker.openInfoWindow(infoWindow);
        marker.addEventListener("click", function(){
            this.openInfoWindow(infoWindow);
            document.getElementById('main_area').onload = function (){
                infoWindow.redraw();
            }
        });
    }
    function bd_share_func(){
        window._bd_share_config={
            "common":{
                "bdText" : '{#$bigtitle#}',
                "bdDesc" : '{#$bigtitle#}',
                "bdUrl" : 'http://www.wndxf.com/invitation/marryimg/{#$bigimage#}',
                "bdPic" : 'http://www.wndxf.com/invitation/marryimg/{#$bigimage#}'
            },
            share : [{
                "bdSize" :32
            }]
        };
        with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];
    }
</script>
<script type="text/javascript">
    function deal_a_href(em){
        $(em).each(function(i,o){
            var e=$(o);
            var href=e.attr('href');
            if(href&&href.length>1){
                var start=href.substring(0,6);
                if (start!='javasc'&&href.indexOf('baidu.com')<1){
                    var new_href="javascript:getHtml('"+href+"')";
                    e.attr('href',new_href);
                }
            }
        });
    }
    deal_a_href('a');
    function getHtml(link){
        $.get(link,function(r){
            var d=r.split('<!--SPLIT-->');
            if (d.length>2&&d[1].length>1){
                $('#myHtmlArea').get(0).innerHTML=d[1];
                if (link.indexOf('photo')>1){
                    phote_func();
                }else if(link.indexOf('share')>1){
                    bd_share_func();
                }else if(link.indexOf('index')>1){
                    delay_load();
                }else if(link.indexOf('map')>1){
                    map_load();
                }
                deal_a_href('#myHtmlArea a');
            }
        });
    }
</script>

</body></html>