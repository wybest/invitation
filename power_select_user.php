<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
Globle::initSmarty();

		Globle::$smarty->display('power_select_user.tpl');

?>