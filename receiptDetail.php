<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'ShujuDO.class.php';
Globle::initSmarty();
require 'is_login.php';
Globle::$smarty->display('head.tpl');
$id = $_REQUEST['id'];
$shujuDO = MyDB::selectShujuByIdDB($id,$link);

Globle::$smarty->assign("shujuDO",$shujuDO);
Globle::$smarty->display('receiptDetail.tpl');
Globle::$smarty->display('foot.tpl');
?>