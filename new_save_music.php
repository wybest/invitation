<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';

if($_REQUEST['insert'] == "insert"){
	$music=$_REQUEST['music'];

	//初始化音乐列表
	require 'init_mp3list.php';

	Globle::$smarty->assign("music",$music);
	Globle::$smarty->display('new_music.tpl');
}else{
	echo '<script>location.href="new_music.php"</script>';
}
?>