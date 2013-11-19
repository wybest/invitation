<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'UserDO.class.php';
Globle::initSmarty();
$name = $_REQUEST['name'];
$password = $_REQUEST['password'];
$email = $_REQUEST['email'];
if($name!=""){

	$user = MyDB::selectUserByNameDB($name, $link);
	if($user == null){
		if(MyDB::insertUserDB($name,$password,$email, $link)){
			echo '<script>location.href="login.php"</script>';
		}else{
			Globle::$smarty->assign("message","注册失败，重新尝试(用户名是否错误)");
		}
	}else{
		Globle::$smarty->assign("message","注册失败，你输入的用户名字已经存在");
	}
}
Globle::$smarty->display('regist.tpl');
?>