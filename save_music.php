<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';

if($_REQUEST['insert'] == "insert"){
	$music=$_REQUEST['music'];
	$target = false;
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$message = "请先完成 “请柬内容设置”";
		Globle::$smarty->assign("message",$message);
		Globle::$smarty->display('head.tpl');
		Globle::$smarty->display('invit_info.tpl');
		Globle::$smarty->display('foot.tpl');
		die();
	}else{
		$target = MyDB::updateInfoMusicDB($music,$user_id,$link);
	}
	if($target){
		Globle::$smarty->assign("target","true");
	}else{
		Globle::$smarty->assign("target","false");
	}
	//初始化音乐列表
	require 'init_mp3list.php';

	Globle::$smarty->assign("music",$music);
	Globle::$smarty->display('head.tpl');
	Globle::$smarty->display('music.tpl');
	Globle::$smarty->display('foot.tpl');
}else{
	echo '<script>location.href="music.php"</script>';
}
?>