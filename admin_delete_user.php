<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'UserDO.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
session_start();
$userId = $_REQUEST['userId'];
$userId = trim($userId);
$user = MyDB::selectUserByAdminIdAndUserIdDB($userId, $_SESSION['admin_id'], $link);
Globle::$smarty->display('admin_head.tpl');

$destination_folder = "marryimg/";
if ($user == null) {
    Globle::$smarty->assign("message", $uname . " 该用户不存在！");
    Globle::$smarty->display('power_vip_user.tpl');
} else {
    $user_id = $user->id;

    $messageDO = MyDB::selectInfoDB($userId, $link);

    if ($messageDO != null) {

        //删除大图
        if ($messageDO->bigimage != "") {
            if (!unlink($destination_folder . $messageDO->bigimage)) {
                Globle::logError($image . " 删除失败，请手动删除");
            }
        }

        $images = explode(",", $messageDO->image);
        //删除相册
        foreach ($images as $img) {
            if ($img != "") {
                if (!unlink($destination_folder . $img)) {
                    Globle::logError($image . " 删除失败，请手动删除");
                }
            }
        }

        //删除自己
        //MyDB::deleteInfoDB($userId,$link);

        //删除vip
        MyDB::deleteAllVipDB($user_id, $link);

        //删除回函
        //MyDB::deleteShujuByUserIdDB($user_id,$link);

        //删除自己的账户
        MyDB::updateUserClosedByAdminDB($userId, $_SESSION['admin_id'], $link);

    }
    Globle::$smarty->assign("message", $uname . " 该用户关闭成功！");
    Globle::$smarty->display('power_vip_user.tpl');

}
Globle::$smarty->display('foot.tpl');


?>