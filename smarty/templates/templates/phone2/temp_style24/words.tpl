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
	<script type="text/javascript" src="style/style24/j.js"></script>
<link rel="stylesheet" href="style/style24/discuz.css"></head>
<body id="color_a">
<div id="myHtmlArea">
<!--SPLIT--><div class="body">
    <div class="light">
        <a id="shadow1" class="shadow"></a>
        <a id="shadow2" class="shadow"></a>
    </div>
    <div class="bbox">
        <table class="head" width="100%">
           <tbody><tr>
               <td align="right"><h3>{#$man#}</h3><p>新郎</p></td>
               <td align="center" width="100"><img src="style/style24/rose.png" alt="rose"></td>
               <td align="left"><h3>{#$women#}</h3><p>新娘</p></td>
           </tr>
        </tbody></table>
        <div class="infos zfinfo">

            {#section name=customer loop=$shuju_array #}
            <div class="msg">
                <h5>来自“<cite>{#$shuju_array[customer]->name#}</cite>”的祝福：</h5>
                <p>{#$shuju_array[customer]->bless#}</p>
            </div>
            {#/section#}

            <div class="zftit">送祝福</div>
                <table class="szf" cellspacing="10" width="100%">
                    <tbody><tr>
                        <td align="right" width="40">姓名:</td>
                        <td><input class="name" id="guest" type="text"></td>
                    </tr>
					<tr>
						<td align="right" valign="top">出席:</td>
						<td>
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
                            </select>
						</td>
					</tr>
                    <tr>
                        <td align="right" valign="top">祝福:</td>
                        <td><textarea id="message"></textarea></td>
                    </tr>
                    <tr>
                    <td colspan="2" align="center">
                        <input class="submit" onclick="form_z_sub('{#$name#}')" value="送祝福" type="button">
                    </td>
                    </tr>
                </tbody></table>
                    </div>
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
                    <a class="s" href="#">电子地图</a>
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
		   "imgUrl": "http://static.7192.com/cloud_eic/000/004/324/eic_face.jpg?t=1396539009", 
			"timeLineLink":local,
			"sendFriendLink": local,
			"weiboLink":local,
			"tTitle": "我们结婚了",
			"tContent": "纪宁&李倩梅\n欢迎各位亲朋好友来参加我们的婚礼。",
			"fTitle": "我们结婚了",
			"fContent": "纪宁&李倩梅\n欢迎各位亲朋好友来参加我们的婚礼。",
			"wContent": "纪宁&李倩梅\n欢迎各位亲朋好友来参加我们的婚礼。" 
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