<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();
$name = $_REQUEST['name'];
if($name!=""){
//	MyDB::updateUserPasswordDB($name,$link);
	if(MyDB::updateUserPasswordDB($name,$link)){
		Globle::$smarty->assign("message","注册成功");
	}else{
		Globle::$smarty->assign("message","注册失败");
	}
}
	Globle::$smarty->display('createA.tpl');
?>