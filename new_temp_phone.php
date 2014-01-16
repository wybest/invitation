<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
require 'is_login.php';
//require 'upfile.php';
$messageDO = MyDB::selectInfoDB($user_id, $link);
$user = MyDB::selectUserByIdDB($user_id, $link);
Globle::$smarty->assign("userID", $user_id);
if ($user != null) {
    Globle::$smarty->assign("snum", $user->snum);
    Globle::$smarty->assign("font_family", $user->font_family);
    Globle::$smarty->assign("extends", $user->extends);
    Globle::$smarty->assign("special_name", $user->special_name);
    Globle::$smarty->assign("title1", $user->title1);
    Globle::$smarty->assign("title2", $user->title2);
    Globle::$smarty->assign("title3", $user->title3);
    Globle::$smarty->assign("title4", $user->title4);
    Globle::$smarty->assign("title5", $user->title5);
}
//Globle::$smarty->display('head.tpl');
if ($messageDO != null) {
    Globle::$smarty->assign("mould", $messageDO->mould);
    Globle::$smarty->assign("music", $messageDO->music);
    Globle::$smarty->assign("man", $messageDO->man);
    Globle::$smarty->assign("women", $messageDO->women);
    Globle::$smarty->assign("lasttime", $messageDO->lasttime);
    Globle::$smarty->assign("house", $messageDO->house);
    Globle::$smarty->assign("adress", $messageDO->adress);
    Globle::$smarty->assign("coordinate", $messageDO->coordinate);
    Globle::$smarty->assign("user_id", $messageDO->user_id);
    Globle::$smarty->assign("show_time", $messageDO->show_time);
    Globle::$smarty->assign("mini_time", $messageDO->mini_time);
    Globle::$smarty->assign("title", $messageDO->title);
    Globle::$smarty->assign("message", $messageDO->message);//htmlspecialchars
    Globle::$smarty->assign("image", $messageDO->image);
    if ($messageDO->image == "") {
        Globle::$smarty->assign("images", "none");
    } else {
        $images = explode(",", $messageDO->image);
        Globle::$smarty->assign("images", $images);
    }
    Globle::$smarty->assign("bigimage", $messageDO->bigimage);
    Globle::$smarty->assign("bigtitle", $messageDO->bigtitle);
}
//初始化音乐列表
//require 'init_mp3list.php';
$tpl = $_REQUEST['tpl'];
if ($tpl == "") {
    if ($messageDO->mould == "phone2"
        ||$messageDO->mould == "phone3"
    ||$messageDO->mould == "phone4"
    ||$messageDO->mould == "phone5"
    ||$messageDO->mould == "phone6"
    ||$messageDO->mould == "phone7"
    ||$messageDO->mould == "phone8"
    ||$messageDO->mould == "phone9") {
        Globle::$smarty->display('temp_'.$messageDO->mould.'.tpl');
    } else {
        Globle::$smarty->display('temp_phone.tpl');
    }
} else {
    Globle::$smarty->display('temp_'.$tpl.'.tpl');
}
?>