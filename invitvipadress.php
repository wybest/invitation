<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'VipDO.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();
require 'is_login.php';
$vip_array = MyDB::selectVipDB($user_id, $link);
//echo $user_id;
Globle::$smarty->assign("active","5");
Globle::$smarty->display('new_head.tpl');
Globle::$smarty->assign("vip_array",$vip_array);
Globle::$smarty->display('invitvipadress.tpl');
Globle::$smarty->display('foot.tpl');
?>