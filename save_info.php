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
	$man=$_REQUEST['man'];
	$women=$_REQUEST['women'];
	$lasttime=$_REQUEST['lasttime'];
	$house=$_REQUEST['house'];
	$adress=$_REQUEST['adress'];
	$show_time=$_REQUEST['show_time'];
	$mini_time=$_REQUEST['mini_time'];
	$title=$_REQUEST['title'];
	$message=$_REQUEST['message'];
	$image=$_REQUEST['image'];
	$bigimage=$_REQUEST['bigimage'];
	$bigtitle=$_REQUEST['bigtitle'];
	$target = false;
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$target = MyDB::insertInfoDB($mould, $music, $man, $women, $lasttime, $house, $adress, $user_id, $show_time, $mini_time, $title, $message, $image, $bigimage,$bigtitle,$link);
	}else{
		$target = MyDB::updateInfoDB($music, $lasttime, $house, $adress, $message, $show_time, $mini_time, $title, $user_id,$bigtitle,$link);
	}
	if($target){
		Globle::$smarty->assign("target","true");
	}else{
		Globle::$smarty->assign("target","false");
	}
	//初始化音乐列表
	require 'init_mp3list.php';

	Globle::$smarty->assign("mould",$mould);
	Globle::$smarty->assign("music",$music);
	Globle::$smarty->assign("man",$man);
	Globle::$smarty->assign("women",$women);
	Globle::$smarty->assign("lasttime",$lasttime);
	Globle::$smarty->assign("house",$house);
	Globle::$smarty->assign("adress",$adress);
	Globle::$smarty->assign("coordinate",$coordinate);
	Globle::$smarty->assign("user_id",$name);
	Globle::$smarty->assign("show_time",$show_time);
	Globle::$smarty->assign("mini_time",$mini_time);
	Globle::$smarty->assign("title",$title);
	Globle::$smarty->assign("message",$message);
	Globle::$smarty->assign("image",$image);
	Globle::$smarty->assign("bigimage",$bigimage);
	Globle::$smarty->assign("bigtitle",$bigtitle);
	Globle::$smarty->display('head.tpl');
	Globle::$smarty->display('invit_info.tpl');
	Globle::$smarty->display('foot.tpl');
}else{
	echo '<script>location.href="invit_info.php"</script>';
}
?>