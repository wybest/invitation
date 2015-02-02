<?php

$str = file_get_contents('https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=APPID&secret=APPSECRET')
echo $str;
?>