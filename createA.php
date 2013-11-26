<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
$name = $_REQUEST['name'];
$advert = $_REQUEST['advert'];
$isphone = $_REQUEST['isphone'];
$ispc = $_REQUEST['ispc'];
$query = $_REQUEST['query'];
$font_family = $_REQUEST['font_family'];
if($query == "query"){
	$user = MyDB::selectUserByNameDB($name, $link);
	echo $user->is_pc;
	echo $user->is_phone;
	echo $user->is_pay;
	echo $user->advert;
	Globle::$smarty->assign("name",$name);
	Globle::$smarty->assign("is_pc",$user->is_pc);
	Globle::$smarty->assign("is_phone",$user->is_phone);
	Globle::$smarty->assign("is_pay",$user->is_pay);
	Globle::$smarty->assign("advert",$user->advert);
	Globle::$smarty->assign("font_family",$user->font_family);
	Globle::$smarty->display('createB.tpl');
}
else{
	if($name!=""){
		//	MyDB::updateUserPasswordDB($name,$link);
		if(MyDB::updateUserPasswordDB($name,$link,$isphone,$ispc,$font_family,$advert)){
			Globle::$smarty->assign("message","注册成功");
		}else{
			Globle::$smarty->assign("message","注册失败");
		}

		$user = MyDB::selectUserByNameDB($name, $link);
		Globle::$smarty->assign("name",$name);
		Globle::$smarty->assign("is_pc",$user->is_pc);
		Globle::$smarty->assign("is_phone",$user->is_phone);
		Globle::$smarty->assign("is_pay",$user->is_pay);
		Globle::$smarty->assign("advert",$user->advert);
		Globle::$smarty->assign("font_family",$user->font_family);
		Globle::$smarty->display('createB.tpl');
	}else{
		Globle::$smarty->display('createA.tpl');
	}
}


?>