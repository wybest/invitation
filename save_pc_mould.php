<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';

if($_REQUEST['insert'] == "insert"){
	$pcmould=$_REQUEST['pcmould'];
	
	$target = false;
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$message = "请先完成 “请柬信息设置”";
		Globle::$smarty->assign("message",$message);
		Globle::$smarty->display('head.tpl');
		Globle::$smarty->display('mould_pc.tpl');
		Globle::$smarty->display('foot.tpl');
		die();
	}else{
		$target = MyDB::updateInfoPcMouldDB($pcmould,$user_id,$link);
	}
	if($target){
		Globle::$smarty->assign("target","true");
	}else{
		Globle::$smarty->assign("target","false");
	}

	Globle::$smarty->assign("pcmould",$pcmould);
	Globle::$smarty->display('new_head.tpl');
	Globle::$smarty->display('mould_pc.tpl');
	Globle::$smarty->display('foot.tpl');
}else{
	echo '<script>location.href="mould_pc.php"</script>';
}
?>