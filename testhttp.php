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
var_dump(sha1($str));
//
?>

<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
test
<script>

    wx.config({
        //debug: true,
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
            title: window.title,
            desc: '{#if $vip != "none"#}{#$vip#},{#/if#} {#if $weixin #}{#$weixin#} {#else#} 诚挚邀请您来参加，点击查看详情。 {#/if#}',
            link: window.location.href,
            imgUrl: 'http://www.wndxf.com/invitation/marryimg/{#$bigimage#}'
        }

        wx.onMenuShareAppMessage(shareData);
        wx.onMenuShareTimeline(shareData);
        wx.onMenuShareQQ(shareData);
        wx.onMenuShareWeibo(shareData);
    });

    wx.error(function (res) {
        alert(res.errMsg);
    });



</script>