<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';

$messageDO = MyDB::selectInfoDB($user_id,$link);

Globle::$smarty->display('head.tpl');
if($messageDO!=null){
	Globle::$smarty->assign("coordinate",$messageDO->coordinate);
}
Globle::$smarty->display('coordinate.tpl');
Globle::$smarty->display('foot.tpl');
?>