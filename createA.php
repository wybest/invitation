<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
Globle::initSmarty();

		Globle::$smarty->display('createA.tpl');


?>