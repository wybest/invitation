<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'VipDO.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
$message = $_REQUEST['name'];

$messages = explode("@", $message);
$user = $messages[0];
$vip_id = $messages[1];

$messageDO = MyDB::selectInfoDB($user,$link);

if($messageDO!=null){
	Globle::$smarty->assign("mould",$messageDO->mould);
	Globle::$smarty->assign("music",$messageDO->music);
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
    	$images = explode(",", "2013-10-26-22-54-07.jpg,2013-10-27-09-49-39.jpg,2013-10-27-09-49-48.jpg,2013-10-27-09-49-57.jpg,2013-10-27-09-50-07.jpg,2013-10-27-10-48-18.jpg");
		Globle::$smarty->assign("bigimage","2013-10-26-22-43-46.jpg");
    	Globle::$smarty->assign("images",$images);
	}else{
		$images = explode(",", $messageDO->image);
		Globle::$smarty->assign("images",$images);
		Globle::$smarty->assign("bigimage",$messageDO->bigimage);
	}
	
	$user = MyDB::selectUserByIdDB($user,$link);
	Globle::$smarty->assign("font_family",$user->font_family);
	Globle::$smarty->assign("advert",$user->advert);
	$info=isMobile();
    if($info){
    	if($user->is_phone==1||$user->is_pay==0){
    	if($messageDO->mould == ""){
    			header('Content-Type:text/html; charset=UTF-8');
    			echo "对不起，请在\"手机请柬风格设置\"选择您的手机模板";
    		}else{
    			Globle::$smarty->display('phone.tpl');
    		}
    	}else{
    		header('Content-Type:text/html; charset=UTF-8');
    		echo "对不起，您访问的请柬没有购买手机版的";
    	}
    }else{
    	if($user->is_pc==1||$user->is_pay==0){
    		if($messageDO->pc_mould == ""){
    			header('Content-Type:text/html; charset=UTF-8');
    			echo "对不起，请在\"电脑请柬风格设置\"选择您的电脑模板";
    		}else{
    			Globle::$smarty->display('pc/'.$messageDO->pc_mould.'.tpl');
    		}
    	}else{
    		header('Content-Type:text/html; charset=UTF-8');
    		echo "对不起，您访问的请柬没有购买电脑版的";
    	}
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
                                    'mobile'
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