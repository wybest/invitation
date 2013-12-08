<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';
require 'upfile.php';
$messageDO = MyDB::selectInfoDB($user_id,$link);

Globle::$smarty->display('head.tpl');
if($messageDO!=null){
	Globle::$smarty->assign("music",$messageDO->music);
}
//初始化音乐列表
require 'init_mp3list.php';

Globle::$smarty->display('music.tpl');
Globle::$smarty->display('foot.tpl');
?>