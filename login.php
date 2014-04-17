<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'UserDO.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();
session_start();
$name = $_REQUEST['name'];
$password = $_REQUEST['password'];
$code = $_REQUEST['code'];
if($name!=""){

	if($code == $_SESSION['sn']){
		//sql注入检查
		$name = mysql_real_escape_string($name);
	//	safesql($name);
		$user = MyDB::selectUserDB($name,$password,$link);
		if($user!=null){
			MyDB::updateUserLastTimeDB($name,$link);
            $_SESSION['style'] = $_REQUEST['style'];
			$_SESSION['name'] = $name;
			$_SESSION['user_id'] = $user->id;
            if($user->is_pay==1){
                if($_REQUEST['style']!=$user->style){
                    $_SESSION['style'] = $user->style;
                }
            }

			echo '<script>location.href="invitadress.php"</script>';
		}else{
			Globle::$smarty->assign("message","用户名或密码错误");

		}
	}else{
		Globle::$smarty->assign("message","验证码填写错误，请重新填写");
	}
	Globle::$smarty->display('login.tpl');
}else{
	
	$target = $_REQUEST['target'];
	if($target!=""){
		Globle::$smarty->assign("message","注册成功");
	}
	Globle::$smarty->display('login.tpl');
}
function safesql($name)
{echo "检查sql";
	$re = "/(|'%27|;|(%3d)|(|(%28)|)|(%29)|(/*)|(%2f%2a)|(%2a%2f)|+|(%2b)|(&lt;|(%3e)|(%3e)|(--))|[|%5d)/";
	if( preg_match( $re ,$name))
	{
		echo'请不要非法sql注入';
		exit;
	}
	else
	{
		return turn;
	}
}
?>