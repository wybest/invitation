<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();
$name = $_REQUEST['name'];
$advert = $_REQUEST['advert'];
if($name!=""){
//	MyDB::updateUserPasswordDB($name,$link);
	if(MyDB::updateUserPasswordDB($name,$link)){
		Globle::$smarty->assign("message","注册成功");
	}else{
		Globle::$smarty->assign("message","注册失败");
	}
	MyDB::updateAdvert($advert, $name, $link);
}
	Globle::$smarty->display('createA.tpl');
?>