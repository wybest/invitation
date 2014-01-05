<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'ShujuDO.class.php';
Globle::initSmarty();
require 'is_login.php';
$page_size = 20;
$page_nm = (int)$_REQUEST['page_nm'];

if($page_nm==0){
	$page_nm=1;
}

$count = MyDB::selectShujuCountDB($user_id,$link);
$up = $page_nm-1;
$next = $page_nm+1;
$end = 1;
if($count % $page_size ==0){
	$end = ($count/$page_size);
}else{
	$end = (int)($count/$page_size)+1;
}

if($page_nm>$end){
	$page_nm = $end;
}

$shuju_array = MyDB::selectShujuDB($user_id,$page_nm,$page_size,$link);

Globle::$smarty->assign("active","6");
Globle::$smarty->assign("up",$up);
Globle::$smarty->assign("next",$next);
Globle::$smarty->assign("end",$end);
Globle::$smarty->assign("count",$count);
Globle::$smarty->assign("page",$page_nm);
Globle::$smarty->assign("shuju_array",$shuju_array);
Globle::$smarty->display('new_head.tpl');
Globle::$smarty->display('receipt.tpl');
Globle::$smarty->display('foot.tpl');
?>