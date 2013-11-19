<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require_once 'bcs.class.php';
$host = 'bcs.duapp.com'; 
$ak = '1uzZN9djgyBr3fxnuwdouHwP';
$sk = 'dysGQqeSi0HMyQFeiFhpBb6hbmydEKbe';
$bucket = 'mp3folder';

$baiduBCS = new BaiduBCS ( $ak, $sk, $host );
Globle::initSmarty();

if($_REQUEST['fileup'] == "true"){
	$file = $_FILES["upfile"];
 	Globle::$smarty->display('head.tpl');
    $tmppinfo=pathinfo($file["tmp_name"]);
    //原名字
    $pinfo=pathinfo($file["name"]);
    $object = '/'.$pinfo['basename'];
    $fileUpload = $tmppinfo['dirname']."/".$tmppinfo['basename'];
    $opt = array ("acl" => "public-read" );
	$response = $baiduBCS->create_object ( $bucket, $object, $fileUpload );
	if (! $response->isOK ()) {
		echo "上传失败";
	}
	Globle::$smarty->display('mp3.tpl');
    Globle::$smarty->display('foot.tpl');
}
else{
	echo '<script>location.href="mp3.php"</script>';
}
?>