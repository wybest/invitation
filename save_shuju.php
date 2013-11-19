<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
Globle::initSmarty();

    
	$guest=$_REQUEST['guest'];
	$pnum=$_REQUEST['pnum'];
	$zf=$_REQUEST['zf'];
	$user=$_REQUEST['user'];
	$guest = urldecode($guest);
	$pnum = urldecode($pnum);
	$zf = urldecode($zf);
	
	
	header('Content-Type:text/html; charset=UTF-8');
	
	if(!MyDB::selectShujuByNameDB($user, $guest, $link)){
		if(MyDB::insertShujuDB($guest, $pnum, $zf, $user,$link)){
			echo '发送成功';
		}else{
			echo '发送失败';
		}
	}else{
		echo '发送成功';
	}
	
	
?>