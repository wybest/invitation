<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
session_start();
$uname = $_REQUEST['uname'];
$uname = trim($uname);
$user = MyDB::selectUserByNameDB($uname, $link);
$user_id = $user->id;

if ($_REQUEST['insert'] == "insert") {

    $target = false;

    if ($user == null) {
        echo "用户未填写信息";
        die();
    }
    $isphone = $_REQUEST['isphone'];
    $ispc = $_REQUEST['ispc'];
    $font_family = $_REQUEST['font_family'];
    $extends = $_REQUEST['extends'];
    $special_name = $_REQUEST['special_name'];
    $admin_id = $_SESSION['admin_id'];
    echo $admin_id;
    if ($admin_id>0) {
        $target = MyDB::updateUserByAdmin($user->create_time,$admin_id,$extends, $special_name, $user_id, $link, $isphone, $ispc, $font_family);

        if ($target) {
            Globle::$smarty->assign("target", "true");
        } else {
            Globle::$smarty->assign("target", "false");
        }
    } else {
        echo "admin account is not login";
    }


}
$user = MyDB::selectUserByNameDB($uname, $link);
Globle::$smarty->assign("name", $uname);
Globle::$smarty->assign("is_pc", $user->is_pc);
Globle::$smarty->assign("is_phone", $user->is_phone);
Globle::$smarty->assign("is_pay", $user->is_pay);
Globle::$smarty->assign("font_family", $user->font_family);
Globle::$smarty->assign("extends", $user->extends);
Globle::$smarty->assign("special_name", $user->special_name);

Globle::$smarty->display('admin_head.tpl');
Globle::$smarty->display('power_edit.tpl');
Globle::$smarty->display('foot.tpl');
?>