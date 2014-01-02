<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
//require_once 'bcs.class.php';
$host = 'bcs.duapp.com'; 
$ak = '1uzZN9djgyBr3fxnuwdouHwP';
$sk = 'dysGQqeSi0HMyQFeiFhpBb6hbmydEKbe';
$bucket = 'mp3folder';

//$baiduBCS = new BaiduBCS ( $ak, $sk, $host );
Globle::initSmarty();

if($_REQUEST['fileup'] == "true"){
	$file = $_FILES["upfile"];
 	Globle::$smarty->display('head.tpl');
    $filename=$file["tmp_name"];
    $tmppinfo=pathinfo($file["tmp_name"]);
    //原名字
    $pinfo=pathinfo($file["name"]);
    $object = $pinfo['basename'];
    $fileUpload = $tmppinfo['dirname']."/".$tmppinfo['basename'];

//    $opt = array ("acl" => "public-read" );
//	$response = $baiduBCS->create_object ( $bucket, $object, $fileUpload );
//	if (! $response->isOK ()) {
//		echo "上传失败";
//	}


    $destination_folder="mp3folder/";

    if(!move_uploaded_file ($filename, $destination_folder.$object))
    {
        $message = "移动文件出错,亲重新上传";
        Globle::$smarty->assign("message",$message);
        Globle::$smarty->display('head.tpl');
        if($_REQUEST['type'] == "big"){
            Globle::$smarty->display('big_photo.tpl');
        }
        else if($_REQUEST['type'] == "image"){
            Globle::$smarty->display('image.tpl');
        }
        Globle::$smarty->display('foot.tpl');
        exit;
    }



	Globle::$smarty->display('mp3.tpl');
    Globle::$smarty->display('foot.tpl');
}
else{
	echo '<script>location.href="mp3.php"</script>';
}
?>