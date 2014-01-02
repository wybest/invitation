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
//已经付费
if($user->is_pay == 1){
	if($messageDO!=null){
		if($messageDO->image==""){
			Globle::$smarty->assign("images","none");
		}else{
			$images = explode(",", $messageDO->image);
			Globle::$smarty->assign("images",$images);
		}
	}
	Globle::$smarty->display('new_image.tpl');
}
else{
	echo "对不起，您不是付费用户，不能编辑图片，因为图片存储我们是要付费买空间的，请您谅解----请联系客服去付款</a>";
}
?>