<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
require 'is_login.php';
$messageDO = MyDB::selectInfoDB($user_id,$link);
$user = MyDB::selectUserByNameDB($name, $link);
Globle::$smarty->display('head.tpl');
//已经付费
if($user->is_pay == 1){
	if($messageDO!=null){
		if($messageDO->bigimage==""){
			Globle::$smarty->assign("bigimage","none");
		}else{
			Globle::$smarty->assign("bigimage",$messageDO->bigimage);
		}
	}
	Globle::$smarty->display('big_photo.tpl');
}
else{
	echo "对不起，您不是付费用户，不能编辑图片，因为图片存储我们是要付费买空间的，请您谅解----<a href='http://item.taobao.com/item.htm?id=35673595249'>去付款</a>";
}
Globle::$smarty->display('foot.tpl');
//http://bcs.duapp.com/marryimg/{#$bigimage#}
?>