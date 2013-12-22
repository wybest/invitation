<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
session_start();
$name = $_REQUEST['name'];
$password = $_REQUEST['password'];
$email = $_REQUEST['email'];
$code = $_REQUEST['code'];
if($name!=""){
	if($code == $_SESSION['sn']){
		$user = MyDB::selectUserByNameDB($name, $link);
		if($user == null){
			if(MyDB::insertUserDB($name,$password,$email, $link)){
                $user = MyDB::selectUserByNameDB($name, $link);
                $target = MyDB::insertInfoDB("", "", "", "", "", $user->id, "", "", "", "", "", "","",$link);
                echo '<script>location.href="login.php?target=true"</script>';
			}else{
				Globle::$smarty->assign("message","注册失败，重新尝试(用户名是否错误)");
			}
		}else{
			Globle::$smarty->assign("message","注册失败，你输入的用户名字已经存在");
		}
	}else{
		Globle::$smarty->assign("message","验证码填写错误，请重新填写 ");
	}
	
}
Globle::$smarty->display('regist.tpl');
?>