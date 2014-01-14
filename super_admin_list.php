<?php

require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'UserDO.class.php';
require 'AdminDO.class.php';
Globle::initSmarty();
session_start();
if($_SESSION['super_admin_name']!="wy"){
    echo 'is error account';
    exit();
}

$shuju_array = MyDB::selectAdminListDB($link);

Globle::$smarty->assign("shuju_array",$shuju_array);
Globle::$smarty->display('super_admin_head.tpl');
Globle::$smarty->display('admin_list.tpl');
Globle::$smarty->display('foot.tpl');


?>