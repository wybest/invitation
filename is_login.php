<?php

session_start();
$name = $_SESSION['name'];
$user_id = $_SESSION['user_id'];
if($name==""){
	Globle::$smarty->display('login.tpl');
	die();
}
$tmp = stripos($_SERVER['REQUEST_URI'], "/", 1);
$tmpstr = substr($_SERVER['REQUEST_URI'], 0, $tmp+1);
Globle::$smarty->assign("name",$name);
Globle::$smarty->assign("user_id",$user_id);
Globle::$smarty->assign("host",$_SERVER['SERVER_NAME'].$tmpstr);
?>