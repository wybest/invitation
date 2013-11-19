<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'MyDB.class.php';
//Globle::initSmarty();
//$hello = "随碟附送!";//赋值
//Globle::$smarty->assign("hello",$hello);//引用模板文件
Globle::$smarty->display('index.tpl');

//MyDB::insertUserDB();
//MyDB::selectUserDB();
//MyDB::deleteUserDB();
//MyDB::updateUserDB();
//echo $_SERVER['SERVER_NAME']
//echo $_SERVER['REQUEST_URI'];
$tmp = stripos($_SERVER['REQUEST_URI'], "/", 1);
$tmpstr = substr($_SERVER['REQUEST_URI'], 0, $tmp+1);
echo $tmpstr;
?>