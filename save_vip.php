<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'UserDO.class.php';
require 'VipDO.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();
require 'is_login.php';
	$vip_name=$_REQUEST['vip_name'];
	$user = MyDB::selectUserByNameDB($name,$link);
if($vip_name!=""){	
    //vip数量限制 
	
	if(MyDB::selectVipByVipNameAndUserIdDB($user->id,$vip_name,$link)){
		Globle::$smarty->assign("message","贵宾：".$vip_name." 已经存在");
	}else{
		//现有多少vip
		$count = MyDB::countVipDB($user->id, $link);
		if($user->vip_num <= $count){
			Globle::$smarty->assign("message","您的贵宾数量已经超过".$user->vip_num."个了，如果需要增加数量请联系客服（我们需要租用空间存储贵宾，请您谅解）");
		}else{ 
			MyDB::insertVipDB($user->id, $vip_name, $link);
		}
	}
}	
$vip_array = MyDB::selectVipDB($user->id, $link);
	Globle::$smarty->display('new_head.tpl');
	Globle::$smarty->assign("name",$name);
	Globle::$smarty->assign("vip_array",$vip_array);
	Globle::$smarty->display('invitvipadress.tpl');
	Globle::$smarty->display('foot.tpl');

?>