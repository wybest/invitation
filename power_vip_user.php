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

//时间
$bdate = $_REQUEST['bdate'];
$edate = $_REQUEST['edate'];
if($bdate == ""){
    $bdate = date('Y-m-d',strtotime('-1 month'));
}
if($edate == ""){
//    $edate = date('Y-m-d',strtotime('+1 day'));// H:i:s
    $edate = date('Y-m-d');;
}

$dateStr =  " admin_id =".$_SESSION['admin_id']." and creat_time >= '".$bdate." 00:00:00' and creat_time <= '".$edate." 23:59:59'";

$count = MyDB::selectUserByAdminCountDB("1",$dateStr,$link);
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

$shuju_array = MyDB::selectUserByAdminDB("1",$dateStr,$page_nm,$page_size,$link);

Globle::$smarty->assign("admin_name", $_SESSION['admin_name']);
Globle::$smarty->assign("bdate",$bdate);
Globle::$smarty->assign("edate",$edate);
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