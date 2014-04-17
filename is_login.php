<?php

session_start();
$name = $_SESSION['name'];
$user_id = $_SESSION['user_id'];
$style = $_SESSION['style'];
if($name==""){
	Globle::$smarty->display('login.tpl');
	die();
}
$tmp = stripos($_SERVER['REQUEST_URI'], "/", 1);
$tmpstr = substr($_SERVER['REQUEST_URI'], 0, $tmp+1);
$host = $_SERVER['SERVER_NAME'].$tmpstr;
$adress = "";
if($style=='style1'){
    $adress = "http://".$host."phone.php?name=".$user_id."@";
}else if($style=='style2'){
    $adress = "http://".$host."phone2.php?name=".$user_id."@";
}
Globle::$smarty->assign("adress",$adress);
Globle::$smarty->assign("name",$name);
Globle::$smarty->assign("user_id",$user_id);
Globle::$smarty->assign("host",$host);
?>