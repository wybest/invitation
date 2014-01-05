<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
Globle::initSmarty();
require 'is_login.php';
Globle::$smarty->assign("active","4");
Globle::$smarty->display('new_head.tpl');
Globle::$smarty->display('invitadress.tpl');
Globle::$smarty->display('foot.tpl');
?>