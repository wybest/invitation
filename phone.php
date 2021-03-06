<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'VipDO.class.php';
require 'UserDO.class.php';
require 'ShujuDO.class.php';
Globle::initSmarty();
$message = $_REQUEST['name'];

$messages = explode("@", $message);
$user = $messages[0];
$vip_id = $messages[1];

$messageDO = MyDB::selectInfoDB($user,$link);

if($messageDO!=null){
	Globle::$smarty->assign("mould",$messageDO->mould);
    $music = "";
    if(strstr($messageDO->music,"http")){
        $music = $messageDO->music;
    }else{
        $music = "mp3folder/".$messageDO->music;
    }
	Globle::$smarty->assign("music",$music);
	Globle::$smarty->assign("man",$messageDO->man);
	Globle::$smarty->assign("women",$messageDO->women);
	Globle::$smarty->assign("lasttime",$messageDO->lasttime);
	Globle::$smarty->assign("house",$messageDO->house);
	Globle::$smarty->assign("adress",$messageDO->adress);
	Globle::$smarty->assign("coordinate",$messageDO->coordinate);
	Globle::$smarty->assign("user_id",$messageDO->user_id);
	Globle::$smarty->assign("show_time",$messageDO->show_time);
	Globle::$smarty->assign("mini_time",$messageDO->mini_time);
	Globle::$smarty->assign("title",$messageDO->title);
	Globle::$smarty->assign("message",$messageDO->message);
	Globle::$smarty->assign("nongli",$messageDO->nongli);
	Globle::$smarty->assign("bigtitle",$messageDO->bigtitle);
	Globle::$smarty->assign("weixin",$messageDO->weixin);
    Globle::$smarty->assign("vedio", $messageDO->vedio);
	if($vip_id != ""){
		$vip = MyDB::selectVipByIdDB($vip_id, $link);
		if($vip!=null){
			Globle::$smarty->assign("vip",$vip->vip_name);
		}
//		$name = urldecode($name);
//		$name=iconv("UTF-8","GBK",$name); 
	}else{
		Globle::$smarty->assign("vip","none");
	}
	
	
	Globle::$smarty->assign("name",$user);
    if($messageDO->bigimage==""&&$messageDO->image==""){
    	$images = explode(",", "2013-12-04-17-48-03.jpg,2013-12-04-17-48-08.jpg,2013-12-04-17-49-07.jpg,2013-12-04-17-49-13.jpg,2013-12-04-17-49-36.jpg,2013-12-04-17-49-44.jpg");
		Globle::$smarty->assign("bigimage","2013-12-04-17-51-28.jpg");
    	Globle::$smarty->assign("images",$images);
	}else{
		$images = explode(",", $messageDO->image);
		Globle::$smarty->assign("images",$images);
		Globle::$smarty->assign("bigimage",$messageDO->bigimage);
	}
	
	$user = MyDB::selectUserByIdDB($user,$link);
	Globle::$smarty->assign("font_family",$user->font_family);
	Globle::$smarty->assign("advert",$user->advert);
	Globle::$smarty->assign("is_advert",$user->is_advert);
	Globle::$smarty->assign("extends",$user->extends);
	Globle::$smarty->assign("special_name",$user->special_name);
	Globle::$smarty->assign("title1",$user->title1);
	Globle::$smarty->assign("title2",$user->title2);
	Globle::$smarty->assign("title3",$user->title3);
	Globle::$smarty->assign("title4",$user->title4);
	Globle::$smarty->assign("title5",$user->title5);

    //隐藏

    $ts = explode(",", $user->is_show);
    Globle::$smarty->assign("t1", $ts[0]);
    Globle::$smarty->assign("t2", $ts[1]);
    Globle::$smarty->assign("t3", $ts[2]);
    Globle::$smarty->assign("t4", $ts[3]);
    Globle::$smarty->assign("t5", $ts[4]);
    Globle::$smarty->assign("t6", $ts[5]);

    $count = MyDB::selectShujuCountDB($user->id,$link);
    $shuju_array = MyDB::selectShujuDB($user->id,1,$user->snum,$link);
    Globle::$smarty->assign("shuju_array",$shuju_array);
    Globle::$smarty->assign("totals",$count);
    Globle::$smarty->assign("showcount",$user->snum);

    if ($messageDO->mould == "style24"||$messageDO->mould == "style25"
        ||$messageDO->mould == "style26"||$messageDO->mould == "style27"
        ||$messageDO->mould == "style28"||$messageDO->mould == "style29"
        ||$messageDO->mould == "style30"||$messageDO->mould == "style31") {
        header('Content-Type:text/html; charset=UTF-8');
        echo "对不起，请使用“欧美风”的模板";
        exit();
    }


    //微信验证
    $url = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx8fef9176c6fcac4b&secret=cefd3868f868d46bc17b0c337f927e8c';
    $curl = curl_init();
    curl_setopt($curl, CURLOPT_URL, $url);
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);//这个是重点。
    curl_setopt($curl, CURLOPT_NOBODY, FALSE); //表示需要response body
    $data = curl_exec($curl);
    curl_close($curl);
    $jsonData = json_decode($data,true);
    $access_token = $jsonData['access_token'];

    $url2 = 'https://api.weixin.qq.com/cgi-bin/ticket/getticket?access_token='.$access_token.'&type=jsapi';
    $curl2 = curl_init();
    curl_setopt($curl2, CURLOPT_URL, $url2);
    curl_setopt($curl2, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($curl2, CURLOPT_SSL_VERIFYPEER, false);//这个是重点。
    curl_setopt($curl2, CURLOPT_NOBODY, FALSE); //表示需要response body
    $data = curl_exec($curl2);
    curl_close($curl2);
    $jsonData = json_decode($data,true);
    $ticket = $jsonData['ticket'];
    $noncestr='Wm3WZYTPz0wzccnW';
    $timestamp='1414587457';
    $str = 'jsapi_ticket='.$ticket.'&noncestr='.$noncestr.'&timestamp='.$timestamp.'&url='.'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
    $signature = sha1($str);
    Globle::$smarty->assign("signature",$signature);
	$info=isMobile();
    if(true){
    	if($user->is_phone==1||$user->is_pay==0){
    	if($messageDO->mould == ""){
    			header('Content-Type:text/html; charset=UTF-8');
    			echo "对不起，请在\"手机请柬风格设置\"选择您的手机模板";
    		}else{
            if ($messageDO->mould == "phone2"
                ||$messageDO->mould == "phone3"
                ||$messageDO->mould == "phone4"
                ||$messageDO->mould == "phone5"
                ||$messageDO->mould == "phone6"
                ||$messageDO->mould == "phone7"
                ||$messageDO->mould == "phone8"
                ||$messageDO->mould == "phone9"
                ||$messageDO->mould == "phone10") {
                Globle::$smarty->display('phone/'.$messageDO->mould.'.tpl');
            } else {
                Globle::$smarty->display('phone/phone.tpl');
            }
    		}
    	}else{
    		header('Content-Type:text/html; charset=UTF-8');
    		echo "对不起，您访问的请柬没有购买手机版的";
    	}
    }else{
    		header('Content-Type:text/html; charset=UTF-8');
    		echo "感谢您体验手机电子请柬<br>请点击 <a href=\"http://www.wndxf.com/invitation/phone.php?name=".$message."\">\"查看请柬\"</a><br>因为微信升级安全机制，强制转码网页";
    }

}


function isMobile() {
        // 如果有HTTP_X_WAP_PROFILE则一定是移动设备
        if (isset ($_SERVER['HTTP_X_WAP_PROFILE'])){
            return true;
        }
        //如果via信息含有wap则一定是移动设备,部分服务商会屏蔽该信息
        if (isset ($_SERVER['HTTP_VIA'])) {
        //找不到为flase,否则为true
            return stristr($_SERVER['HTTP_VIA'], "wap") ? true : false;
        }
        //判断手机发送的客户端标志,兼容性有待提高
        if (isset ($_SERVER['HTTP_USER_AGENT'])) {
                $clientkeywords = array (
                                    'nokia',
                                    'sony',
                                    'ericsson',
                                    'mot',
                                    'samsung',
                                    'htc',
                                    'sgh',
                                    'lg',
                                    'sharp',
                                    'sie-',
                                    'philips',
                                    'panasonic',
                                    'alcatel',
                                    'lenovo',
                                    'iphone',
                                    'ipod',
                                    'blackberry',
                                    'meizu',
                                    'android',
                                    'netfront',
                                    'symbian',
                                    'ucweb',
                                    'windowsce',
                                    'palm',
                                    'operamini',
                                    'operamobi',
                                    'openwave',
                                    'nexusone',
                                    'cldc',
                                    'midp',
                                    'wap',
                                    'mobile',
                					'windows phone',
                                    'trident',
                                    'presto',
                                    'sec',
                                    'samsung'
            );
            // 从HTTP_USER_AGENT中查找手机浏览器的关键字
            if (preg_match("/(" . implode('|', $clientkeywords) . ")/i", strtolower($_SERVER['HTTP_USER_AGENT']))) {
                return true;
            }
        }
        //协议法，因为有可能不准确，放到最后判断
        if (isset ($_SERVER['HTTP_ACCEPT'])) {
            // 如果只支持wml并且不支持html那一定是移动设备
            // 如果支持wml和html但是wml在html之前则是移动设备
            if ((strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') !== false) && (strpos($_SERVER['HTTP_ACCEPT'], 'text/html') === false || (strpos($_SERVER['HTTP_ACCEPT'], 'vnd.wap.wml') < strpos($_SERVER['HTTP_ACCEPT'], 'text/html')))) {
                return true;
            }
        }
        return false;
 }

?>