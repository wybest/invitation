<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{#$bigtitle#}</title>
    <meta name="description" content="{#$bigtitle#}">
    <meta name="Author" content="Zero">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="telephone=no" name="format-detection">
    <meta name="generator" content="bd-mobcard">
    <link rel="stylesheet" type="text/css" href="style/style24/eic.css">
    <link rel="stylesheet" type="text/css" href="style/style24/style.css">
	<script type="text/javascript" src="style/style24/j.js"></script>
<link rel="stylesheet" href="style/style24/discuz.css"></head>
<body id="color_a">
<div id="myHtmlArea">
<!--SPLIT--><div class="body">
	<div id="some_cover">
	<div id="cover" class="cover"><table cellpadding="0" cellspacing="0"><tbody><tr><th><img src="marryimg/{#$bigimage#}" id="banner_img" alt="新婚幸福"></th></tr></tbody></table></div>
	</div>
    <div class="menus">
    <table width="100%">
        <tbody><tr>
            <td align="center">
                <a class="mqj" href="#"></a>
                <span>请柬</span>
            </td>
            <td align="center">
                <a class="mzp" href="#"></a>
                <span>照片</span>
            </td>
            <td align="center">
                <a class="mdt" href="#"></a>
                <span>地图</span>
            </td>
            <td align="center">
                <a class="mzf" href="#"></a>
                <span>祝福</span>
            </td>
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
<script type="text/javascript" src="style/style24/lhgdialog.js"></script>
<script type="text/javascript" src="style/style24/mobile_eic_01.js"></script>

<div id="menus_area_this">
<div class="fmenu">
    <table cellpadding="0" cellspacing="0" width="116">
        <tbody><tr>
            <td><img src="style/style24/mtt.png"></td>
        </tr>
        <tr>
            <td>
            <div class="mcon">
                <div id="group1">
                    <a>快速导航</a>
                </div>
                <div id="group2" style="display:none;">
                    <a href="#">返回封面</a>
                    <a class="s" href="#">电子请柬</a>
                    <a href="#">婚纱照片</a>
                    <a class="#">电子地图</a>
                    <a href="#">祝福留言</a>
                </div>
            </div>
            </td>
        </tr>
    </tbody></table>
</div>
<script type="text/javascript">
document.getElementById('group1').addEventListener('click', function(event){
    event.preventDefault();
    event.stopPropagation();
    document.getElementById('group1').style.display='none';
    document.getElementById('group2').style.display='block';
});
document.body.addEventListener('click', function(e){
    document.getElementById('group2').style.display='none';
    document.getElementById('group1').style.display='block';
});
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
<link href="style/style24/photoswipe.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/style24/klass.js"></script>
<script type="text/javascript" src="style/style24/code.js"></script>
<script src="style/style24/api.js" type="text/javascript"></script><script type="text/javascript" src="style/style24/getscript.js"></script><link rel="stylesheet" type="text/css" href="style/style24/bmap.css">


</body></html>