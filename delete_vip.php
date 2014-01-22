<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'VipDO.class.php';
Globle::initSmarty();
require 'is_login.php';
require 'upfile.php';

$vip_id = $_REQUEST['vip_id'];
if($vip_id !=""){
	MyDB::deleteVipDB($user_id, $vip_id, $link);
}
$vip_array = MyDB::selectVipDB($user_id, $link);
	Globle::$smarty->display('new_head.tpl');
	Globle::$smarty->assign("name",$name);
	Globle::$smarty->assign("vip_array",$vip_array);
	Globle::$smarty->display('invitvipadress.tpl');
	Globle::$smarty->display('foot.tpl');
?>