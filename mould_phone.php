<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';
$messageDO = MyDB::selectInfoDB($user_id,$link);
if($messageDO!=null){
	Globle::$smarty->assign("mould",$messageDO->mould);
}
Globle::$smarty->display('head.tpl');
Globle::$smarty->display('mould_phone.tpl');
Globle::$smarty->display('foot.tpl');
?>