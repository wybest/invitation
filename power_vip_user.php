<?php

require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
session_start();
$page_size = 20;
$page_nm = (int)$_REQUEST['page_nm'];
if($page_nm==0){
    $page_nm=1;
}

$count = MyDB::selectUserByAdminCountDB($_SESSION['admin_id'],$link);
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

$shuju_array = MyDB::selectUserByAdminDB($_SESSION['admin_id'],$page_nm,$page_size,$link);


Globle::$smarty->assign("up",$up);
Globle::$smarty->assign("next",$next);
Globle::$smarty->assign("end",$end);
Globle::$smarty->assign("count",$count);
Globle::$smarty->assign("page",$page_nm);
Globle::$smarty->assign("shuju_array",$shuju_array);
Globle::$smarty->display('admin_head.tpl');
Globle::$smarty->display('power_vip_user.tpl');
Globle::$smarty->display('foot.tpl');


?>