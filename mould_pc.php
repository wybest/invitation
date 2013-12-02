<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
$messageDO = MyDB::selectInfoDB($user_id,$link);
if($messageDO!=null){
	Globle::$smarty->assign("pcmould",$messageDO->pc_mould);
}
Globle::$smarty->display('head.tpl');
Globle::$smarty->display('mould_pc.tpl');
Globle::$smarty->display('foot.tpl');
?>