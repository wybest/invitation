<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';
//require 'upfile.php';
$messageDO = MyDB::selectInfoDB($user_id,$link);

Globle::$smarty->display('head.tpl');
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
	Globle::$smarty->assign("image",$messageDO->image);
	Globle::$smarty->assign("bigimage",$messageDO->bigimage);
	Globle::$smarty->assign("bigtitle",$messageDO->bigtitle);
}
//初始化音乐列表
//require 'init_mp3list.php';

Globle::$smarty->display('invit_info.tpl');
Globle::$smarty->display('foot.tpl');
?>