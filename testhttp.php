<?php

//$str = file_get_contents('https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx8fef9176c6fcac4b&secret=cefd3868f868d46bc17b0c337f927e8c');

$url = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx8fef9176c6fcac4b&secret=cefd3868f868d46bc17b0c337f927e8c';
$curl = curl_init();
curl_setopt($curl, CURLOPT_URL, $url);
//curl_setopt($curl, CURLOPT_HEADER, 1);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);//这个是重点。
curl_setopt($curl, CURLOPT_NOBODY, FALSE); //表示需要response body
$data = curl_exec($curl);
curl_close($curl);
//var_dump($data);
$jsonData = json_decode($data,true);
$access_token = $jsonData['access_token'];
//var_dump($access_token);

$url2 = 'https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token='.$access_token.'&type=jsapi';
$curl2 = curl_init();
curl_setopt($curl2, CURLOPT_URL, $url2);
//curl_setopt($curl, CURLOPT_HEADER, 1);
curl_setopt($curl2, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl2, CURLOPT_SSL_VERIFYPEER, false);//这个是重点。
curl_setopt($curl2, CURLOPT_NOBODY, FALSE); //表示需要response body
$data = curl_exec($curl2);
curl_close($curl2);
var_dump($data);
$jsonData = json_decode($data,true);
$ticket = $jsonData['ticket'];
$noncestr='Wm3WZYTPz0wzccnW';
$timestamp='1414587457';
$str = 'jsapi_ticket='.$ticket.'&noncestr='.$noncestr.'&timestamp='.$timestamp.'&url=http://www.wndxf.com/invitation/testhttp.php';
//var_dump(sha1($str));
//

echo 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
?>







<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
test
<script>

    wx.config({
        debug: true,
        appId: 'wx8fef9176c6fcac4b',
        timestamp:1414587457,
        nonceStr: 'Wm3WZYTPz0wzccnW',
        signature: '<?php echo sha1($str)?>',
        jsApiList: [
            'onMenuShareTimeline',
            'onMenuShareAppMessage',
            'onMenuShareQQ',
            'onMenuShareWeibo'

        ]
    });
    wx.ready(function () {
        var shareData = {
            title: 'titlecscscscs',
            desc: '测试测试测试',
            link: window.location.href,
            imgUrl: 'http://www.wndxf.com/invitation/marryimg/2015-01-27-17-33-15.jpg'
        }

        wx.checkJsApi({
            jsApiList: ['onMenuShareTimeline',
                'onMenuShareAppMessage',
                'onMenuShareQQ',
                'onMenuShareWeibo'], // 需要检测的JS接口列表，所有JS接口列表见附录2,
            success: function(res) {
                alert(res);
            }
                // 以键值对的形式返回，可用的api值true，不可用为false
                // 如：{"checkResult":{"chooseImage":true},"errMsg":"checkJsApi:ok"}
            });

        wx.onMenuShareAppMessage({
            title: 'titlecscscscs', // 分享标题
            desc: '测试测试测试', // 分享描述
            link: 'www.wndxf.com/invitation', // 分享链接
            imgUrl: 'www.wndxf.com/invitation/marryimg/2015-01-27-17-33-15.jpg', // 分享图标
            type: '', // 分享类型,music、video或link，不填默认为link
            dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
            success: function () {
                alert(1);
            },
            cancel: function () {
                alert(2);
            }
        });

//        wx.onMenuShareAppMessage(shareData);
//        wx.onMenuShareTimeline(shareData);
//        wx.onMenuShareQQ(shareData);
//        wx.onMenuShareWeibo(shareData);
    });

    wx.error(function (res) {
        alert(res.errMsg);
    });



</script>