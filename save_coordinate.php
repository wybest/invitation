<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';

if($_REQUEST['coordinate'] != ""){
	$coordinate=$_REQUEST['coordinate'];
	$target = false;
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$message = "<script language='javascript'>alert('请先完成 “请柬信息设置”')</script>";
		Globle::$smarty->assign("message",$message);
		//		$target = MyDB::insertInfoCoordinateDB($coordinate, $name);
	}else{
		$target = MyDB::updateInfoCoordinateDB($coordinate, $user_id,$link);
		if($target){
			Globle::$smarty->assign("target","true");
		}else{
			Globle::$smarty->assign("target","false");
		}
	}

	Globle::$smarty->assign("coordinate",$coordinate);
	Globle::$smarty->display('head.tpl');
	Globle::$smarty->display('coordinate.tpl');
	Globle::$smarty->display('foot.tpl');
}else{
	echo '<script>location.href="coordinate.php"</script>';
}
?>