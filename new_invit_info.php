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

    //隐藏

    $ts = explode(",", $user->is_show);
    Globle::$smarty->assign("t1", $ts[0]);
    Globle::$smarty->assign("t2", $ts[1]);
    Globle::$smarty->assign("t3", $ts[2]);
    Globle::$smarty->assign("t4", $ts[3]);
    Globle::$smarty->assign("t5", $ts[4]);
    Globle::$smarty->assign("t6", $ts[5]);
}
//Globle::$smarty->display('new_head.tpl');
if ($messageDO != null) {
    Globle::$smarty->assign("mould", $messageDO->mould);
    Globle::$smarty->assign("music", $messageDO->music);
    Globle::$smarty->assign("man", $messageDO->man);
    Globle::$smarty->assign("women", $messageDO->women);
    Globle::$smarty->assign("lasttime", $messageDO->lasttime);
    Globle::$smarty->assign("house", $messageDO->house);
    Globle::$smarty->assign("address", $messageDO->adress);
    Globle::$smarty->assign("coordinate", $messageDO->coordinate);
    Globle::$smarty->assign("user_id", $messageDO->user_id);
    Globle::$smarty->assign("show_time", $messageDO->show_time);
    Globle::$smarty->assign("mini_time", $messageDO->mini_time);
    Globle::$smarty->assign("title", $messageDO->title);
    Globle::$smarty->assign("message", htmlspecialchars($messageDO->message));
    Globle::$smarty->assign("image", $messageDO->image);
    if($messageDO->image==""){
        Globle::$smarty->assign("images","none");
    }else{
        $images = explode(",", $messageDO->image);
        Globle::$smarty->assign("images",$images);
    }
    Globle::$smarty->assign("bigimage", $messageDO->bigimage);
    Globle::$smarty->assign("bigtitle", $messageDO->bigtitle);
}
//初始化音乐列表
//require 'init_mp3list.php';

if($style=='style1'){
    Globle::$smarty->display('new_invit_info.tpl');
}else if($style=='style2'){
    Globle::$smarty->display('new_invit_info2.tpl');
}

//Globle::$smarty->display('foot.tpl');
?>