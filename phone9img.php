<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'VipDO.class.php';
require 'UserDO.class.php';
require 'ShujuDO.class.php';
Globle::initSmarty();
$user = $_REQUEST['user'];

$messageDO = MyDB::selectInfoDB($user,$link);

if($messageDO!=null){

    Globle::$smarty->assign("name",$user);
    if($messageDO->bigimage==""&&$messageDO->image==""){
        $images = explode(",", "2013-12-04-17-48-03.jpg,2013-12-04-17-48-08.jpg,2013-12-04-17-49-07.jpg,2013-12-04-17-49-13.jpg,2013-12-04-17-49-36.jpg,2013-12-04-17-49-44.jpg");
        Globle::$smarty->assign("bigimage","2013-12-04-17-51-28.jpg");
        Globle::$smarty->assign("images",$images);
    }else{
        $images = explode(",", $messageDO->image);
        Globle::$smarty->assign("images",$images);
        Globle::$smarty->assign("bigimage",$messageDO->bigimage);
    }
    $music = "";
    if(strstr($messageDO->music,"http")){
        $music = $messageDO->music;
    }else{
        $music = "mp3folder/".$messageDO->music;
    }
    Globle::$smarty->assign("music",$music);
    Globle::$smarty->display('phone/phone9img.tpl');
}

?>