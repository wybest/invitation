<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
require 'is_login.php';

if($_REQUEST['insert'] == "insert"){

    $music=$_REQUEST['music'];
    $mould=$_REQUEST['mould'];
    $bigtitle=$_REQUEST['bigtitle'];
    $show_time=$_REQUEST['show_time'];

    $mini_time=$_REQUEST['mini_time'];
    $house=$_REQUEST['house'];

    $num=$_REQUEST['num'];

    $address=$_REQUEST['address'];
    $coordinate=$_REQUEST['coordinate'];

    $message=$_REQUEST['message'];

    $lasttime=$_REQUEST['time'];

	$man=$_REQUEST['man'];
	$women=$_REQUEST['women'];

	$title=$_REQUEST['title'];

    $title1=$_REQUEST['title1'];
    $title2=$_REQUEST['title2'];
    $title3=$_REQUEST['title3'];
    $title4=$_REQUEST['title4'];
    $title5=$_REQUEST['title5'];

	$target = false;
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$target = MyDB::insertInfoDB($man, $women, $lasttime, $house, $address, $user_id, $show_time, $mini_time, $title, $message, $image, $bigimage,$bigtitle,$link);
	}else{
        if($messageDO->man != ""){
            $man = $messageDO->man;
        }
        if($messageDO->women != ""){
            $women = $messageDO->women;
        }
		$target = MyDB::updateInfoDB($man,$women,$lasttime, $house, $address, $message, $show_time, $mini_time, $title, $user_id,$bigtitle,$link);
        MyDB::updateInfoPhoneMouldDB($mould,$user_id,$link);
        MyDB::updateInfoMusicDB($music,$user_id,$link);
        MyDB::updateInfoCoordinateDB($coordinate,$user_id,$link);
        MyDB::updateUserTitleDB($title1,$title2,$title3,$title4,$title5,$num,$user_id,$link);

    }
	if($target){
		Globle::$smarty->assign("target","true");
	}else{
		Globle::$smarty->assign("target","false");
	}
    $messageDO = MyDB::selectInfoDB($user_id, $link);
    $user = MyDB::selectUserByIdDB($user_id, $link);
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
        Globle::$smarty->assign("address", $messageDO->adress);
        Globle::$smarty->assign("coordinate", $messageDO->coordinate);
        Globle::$smarty->assign("user_id", $messageDO->user_id);
        Globle::$smarty->assign("show_time", $messageDO->show_time);
        Globle::$smarty->assign("mini_time", $messageDO->mini_time);
        Globle::$smarty->assign("title", $messageDO->title);
        Globle::$smarty->assign("message", $messageDO->message);
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
    Globle::$smarty->display('new_invit_info.tpl');
}else{
	echo '<script>location.href="new_invit_info.php"</script>';
}
?>