<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
Globle::initSmarty();
session_start();
Globle::$smarty->assign("admin_name", $_SESSION['admin_name']);
Globle::$smarty->display('admin_head.tpl');
Globle::$smarty->display('power_select_user.tpl');
Globle::$smarty->display('foot.tpl');

?>