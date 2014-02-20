<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'AdminDO.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();
session_start();
$name = $_REQUEST['aname'];
$password = $_REQUEST['apassword'];
$code = $_REQUEST['code'];
if($name!=""){


	if($code == $_SESSION['sn']){
		//sql注入检查
		$name = mysql_real_escape_string($name);
	//	safesql($name);
		$user = MyDB::selectAdminDB($name,$password,$link);
		if($user!=null){
			$_SESSION['admin_name'] = $name;
			$_SESSION['admin_id'] = $user->id;
            if($name=="wy"){
                $_SESSION['super_admin_name'] = $name;
                echo '<script>location.href="super_power_vip_user.php"</script>';
            }else{
                echo '<script>location.href="power_select_user.php"</script>';
            }
		}else{
			Globle::$smarty->assign("message","管理员名或密码错误");

		}
	}else{
		Globle::$smarty->assign("message","验证码填写错误，请重新填写");
	}
	Globle::$smarty->display('power.tpl');
}else{

	$target = $_REQUEST['target'];
	if($target!=""){
		Globle::$smarty->assign("message","注册成功");
	}
	Globle::$smarty->display('power.tpl');
}

?>