<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
Globle::initSmarty();
require 'is_login.php';
//require 'upfile.php';
if($_REQUEST['delete'] == "true"){

	$destination_folder="marryimg/";
	//检查信息是存在
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$message = "<script language='javascript'>alert('请先完成 “请柬信息设置”')</script>";
		Globle::$smarty->assign("message",$message);
		Globle::$smarty->display('head.tpl');
		if($_REQUEST['type'] == "big"){
			Globle::$smarty->display('big_photo.tpl');
		}
		else if($_REQUEST['type'] == "image"){
			Globle::$smarty->display('image.tpl');
		}
		Globle::$smarty->display('foot.tpl');
		die();
	}
    $image = "";
    Globle::$smarty->display('head.tpl');
    if($_REQUEST['type'] == "big"){
    	
    	$target = MyDB::updateInfoGigPhotoDB("", $user_id,$link);
    	$image = $messageDO->bigimage;
//    	if($messageDO->bigimage!=""){
//    		if(!unlink($destination_folder.$messageDO->bigimage) )
//    		{
//    			Globle::logError($messageDO->bigimage." 删除失败，请手动删除");
//    		}
//    	}
        Globle::$smarty->assign("bigimage","none");
    	if($target){
    		Globle::$smarty->assign("target","true");
    	}else{
    		Globle::$smarty->assign("target","false");
    	}
    	Globle::$smarty->display('big_photo.tpl');

    }
    else if($_REQUEST['type'] == "image"){

    	$newimages = "";
    	$image = $_REQUEST['image'];
        $images = explode(",", $messageDO->image);
    	foreach ($images as $img){
    		if($image != $img){
    			if($newimages == ""){
    				$newimages = $img;
    			}else{
    				$newimages = $newimages.",".$img;
    			}
    		}
    	}
    	
    	$target = MyDB::updateInfoImageDB($newimages, $user_id,$link);

    	if($target){
    		Globle::$smarty->assign("target","true");
    	}else{
    		Globle::$smarty->assign("target","false");
    	}
    	if($newimages == ""){
    		Globle::$smarty->assign("images","none");
    	}else {
    		$images = explode(",", $newimages);
    		Globle::$smarty->assign("images",$images);
    	}
    	
    	Globle::$smarty->display('image.tpl');
    	
    }
    //删除文件，百度禁用
//    if($messageDO->bigimage!=""){
//
//    	$object = '/'.$image;
//	    $response = $baiduBCS->delete_object ( $bucket, $object);
//		if (! $response->isOK ()) {
//			Globle::logError($image." 删除失败，请手动删除");
//		}
//    }

    //本地删除文件 百度调用，禁用
    if($image!=""){
        if(!unlink($destination_folder.$image) )
        {
            Globle::logError($image." 删除失败，请手动删除");
        }
    }
    Globle::$smarty->display('foot.tpl');
}
else{
	echo '<script>location.href="big_photo.php"</script>';
}
?>