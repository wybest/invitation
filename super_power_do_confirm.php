<?php

require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'UserDO.class.php';
require 'AdminDO.class.php';
Globle::initSmarty();
session_start();
if($_SESSION['super_admin_name']!="wy"){
    echo 'is error account';
    exit();
}
//管理员
$ad_name = $_REQUEST['ad'];
$admin = MyDB::selectAdminBySuperDB($ad_name,$link);

//时间
$bdate = $_REQUEST['b'];
$edate = $_REQUEST['e'];
if($bdate == ""){
    $bdate = date('Y-m')."-01";
}
if($edate == ""){
//    $edate = date('Y-m-d',strtotime('+1 day'));// H:i:s
    $edate = date('Y-m',strtotime('+1 month'))."-01";
}
$dateStr = " creat_time >= '".$bdate." 00:00:00' and creat_time <= '".$edate." 00:00:00' ";
$dateStr = " admin_id =".$admin->id." and ".$dateStr;

//结算更新为已结算
 MyDB::updateUserConfirmByAdminDB($dateStr."and is_confirm = 0",$admin->id,$link);

//已开通 未结算
$count1 = MyDB::selectUserByAdminCountByConfirmDB("0","1",$dateStr,$link);

//已开通 已结算
$count2 = MyDB::selectUserByAdminCountByConfirmDB("1","1",$dateStr,$link);

//已关闭
$count3 = MyDB::selectUserByAdminCountByConfirmDB("3",$dateStr,$link);

//计算金额
$money = $count1*$admin->price;


Globle::$smarty->assign("bdate",$bdate);
Globle::$smarty->assign("edate",$edate);
Globle::$smarty->assign("ad_name", $ad_name);
Globle::$smarty->assign("count1",$count1);
Globle::$smarty->assign("count2",$count2);
Globle::$smarty->assign("count3",$count3);
Globle::$smarty->assign("money",$money);
Globle::$smarty->display('super_admin_head.tpl');
Globle::$smarty->display('super_power_confirm.tpl');
Globle::$smarty->display('foot.tpl');


?>