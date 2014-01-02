<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
$uname = $_REQUEST['uname'];
$uname = trim($uname);
$user = MyDB::selectUserByNameDB($uname, $link);
$user_id = $user->id;

if($_REQUEST['insert'] == "insert"){
	
	$target = false;

	if($user==null){
		echo "用户未填写信息";
		die();
	}
	$advert = $_REQUEST['advert'];
	$isphone = $_REQUEST['isphone'];
	$ispc = $_REQUEST['ispc'];
	$font_family = $_REQUEST['font_family'];
	$vip_num = $_REQUEST['vip_num'];
	$extends=$_REQUEST['extends'];
	$special_name=$_REQUEST['special_name'];
	$title1=$_REQUEST['title1'];
	$title2=$_REQUEST['title2'];
	$title3=$_REQUEST['title3'];
	$title4=$_REQUEST['title4'];
	$title5=$_REQUEST['title5'];
	$target = MyDB::updateUserPasswordDB($vip_num,$extends, $special_name, $title1, $title2, $title3, $title4, $title5, $user_id,$link,$isphone,$ispc,$font_family,$advert);
	
	if($target){
		Globle::$smarty->assign("target","true");
	}else{
		Globle::$smarty->assign("target","false");
	}
	
}
$user = MyDB::selectUserByNameDB($uname, $link);
Globle::$smarty->assign("name",$uname);
Globle::$smarty->assign("is_pc",$user->is_pc);
Globle::$smarty->assign("is_phone",$user->is_phone);
Globle::$smarty->assign("is_pay",$user->is_pay);
Globle::$smarty->assign("advert",$user->advert);
Globle::$smarty->assign("font_family",$user->font_family);
Globle::$smarty->assign("extends",$user->extends);
Globle::$smarty->assign("vip_num",$user->vip_num);
Globle::$smarty->assign("special_name",$user->special_name);
Globle::$smarty->assign("title1",$user->title1);
Globle::$smarty->assign("title2",$user->title2);
Globle::$smarty->assign("title3",$user->title3);
Globle::$smarty->assign("title4",$user->title4);
Globle::$smarty->assign("title5",$user->title5);

Globle::$smarty->display('head.tpl');
Globle::$smarty->display('edit_info.tpl');
Globle::$smarty->display('foot.tpl');
?>