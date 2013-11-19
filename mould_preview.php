<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'MyDB.class.php';
Globle::initSmarty();
require 'is_login.php';
Globle::$smarty->display('head.tpl');
Globle::$smarty->display('mould_preview.tpl');
Globle::$smarty->display('foot.tpl');
?>