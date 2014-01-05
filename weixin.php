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

Globle::$smarty->display('new_head.tpl');
if($messageDO!=null){
	Globle::$smarty->assign("weixin",$messageDO->weixin);
}
//初始化音乐列表
require 'init_mp3list.php';
Globle::$smarty->assign("active","3");
Globle::$smarty->display('weixin.tpl');
Globle::$smarty->display('foot.tpl');
?>