<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
Globle::initSmarty();

Globle::$smarty->display('head.tpl');

Globle::$smarty->display('mp3.tpl');
Globle::$smarty->display('foot.tpl');
?>