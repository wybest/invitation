<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
//require 'upfile.php';
Globle::initSmarty();
require 'is_login.php';

if($_REQUEST['fileup'] == "true"){

	//检查信息是存在
	$messageDO = MyDB::selectInfoDB($user_id,$link);

	if($messageDO==null){
		$message = "请先完成 “请柬信息设置”";
		Globle::$smarty->assign("message",$message);
		
		if($_REQUEST['type'] == "big"){
			Globle::$smarty->display('big_photo.tpl');
		}
		else if($_REQUEST['type'] == "image"){
			Globle::$smarty->display('image.tpl');
		}
		
		die();
	}

	$uptypes=array(
    'image/jpg',  
    'image/jpeg',  
    'image/png',  
    'image/pjpeg',  
    'image/gif',  
    'image/bmp',  
    'image/x-png'  
    );
    $destination_folder="marryimg/";
    $allmessage = "";
    if (!is_uploaded_file($_FILES["upfile"][tmp_name]))
    //是否存在文件
    {
    	$message = "图片不存在!";
    	Globle::$smarty->assign("message",$message);
    	
    	if($_REQUEST['type'] == "big"){
    		Globle::$smarty->display('big_photo.tpl');
    	}
    	else if($_REQUEST['type'] == "image"){
    		Globle::$smarty->display('image.tpl');
    	}
    	
    	exit;
    }

    $file = $_FILES["upfile"];
    if(200*1024 < $file["size"])
    //检查文件大小
    {
    	$message = "文件太大,不要超过200KB";
    	Globle::$smarty->assign("message",$message);
    	
    	if($_REQUEST['type'] == "big"){
    		Globle::$smarty->display('big_photo.tpl');
    	}
    	else if($_REQUEST['type'] == "image"){
    		Globle::$smarty->display('image.tpl');
    	}
    	
    	exit;
    }

    if(!in_array($file["type"], $uptypes))
    //检查文件类型
    {
    	$message = "文件类型不符!".$file["type"]."";
    	Globle::$smarty->assign("message",$message);
    	
    	if($_REQUEST['type'] == "big"){
    		Globle::$smarty->display('big_photo.tpl');
    	}
    	else if($_REQUEST['type'] == "image"){
    		Globle::$smarty->display('image.tpl');
    	}
    	
    	exit;
    }

    $month_folder = date('Y-m');

    if(!file_exists($destination_folder.$month_folder."/"))
    {
    	mkdir($destination_folder.$month_folder."/");
    }

    $filename=$file["tmp_name"];
  //	$image_size = getimagesize($filename);
    $pinfo=pathinfo($file["name"]);
    $tmppinfo=pathinfo($file["tmp_name"]);

//    $pinfo=pathinfo($file["name"]);
//    echo $pinfo["basename"];
    $ftype=$pinfo['extension'];
    //	$destination = $destination_folder.time().".".$ftype;
    //    $filename = date('Y-m-d-H-i-s').".".$ftype;
    if (file_exists($destination) && $overwrite != true)
    {
    	$message = "同名文件已经存在了";
    	Globle::$smarty->assign("message",$message);
    	
    	if($_REQUEST['type'] == "big"){
    		Globle::$smarty->display('big_photo.tpl');
    	}
    	else if($_REQUEST['type'] == "image"){
    		Globle::$smarty->display('image.tpl');
    	}
    	
    	exit;
    }
    $newfilename = date('Y-m-d-H-i-s').".".$ftype;
    
    $object = '/'.$newfilename;
    $fileUpload = $tmppinfo['dirname']."/".$tmppinfo['basename'];

    //禁用百度云存储，速度太慢
//    $opt = array ("acl" => "public-read" );
//	$response = $baiduBCS->create_object ( $bucket, $object, $fileUpload );
//	if (! $response->isOK ()) {
//		$message = "移动文件出错,亲重新上传";
//    	Globle::$smarty->assign("message",$message);
//    	
//    	if($_REQUEST['type'] == "big"){
//    		Globle::$smarty->display('big_photo.tpl');
//    	}
//    	else if($_REQUEST['type'] == "image"){
//    		Globle::$smarty->display('image.tpl');
//    	}
//    	
//    	exit;
//	}

//   本地存储
//	echo "Create object[$object] in bucket[$bucket] success\n";
    
    if(!move_uploaded_file ($filename, $destination_folder.$month_folder."/".$newfilename))
    {
    	$message = "移动文件出错,亲重新上传";
    	Globle::$smarty->assign("message",$message);
    	
    	if($_REQUEST['type'] == "big"){
    		Globle::$smarty->display('new_big_photo.tpl');
    	}
    	else if($_REQUEST['type'] == "image"){
    		Globle::$smarty->display('new_image.tpl');
    	}
    	
    	exit;
    }

    
    if($_REQUEST['type'] == "big"){

    	$target = MyDB::updateInfoGigPhotoDB($month_folder."/".$newfilename, $user_id,$link);
    	//删除文件 百度调用，禁用
//	    if($messageDO->bigimage!=""){
//
//	    	$object = '/'.$messageDO->bigimage;
//		    $response = $baiduBCS->delete_object ( $bucket, $object);
//			if (! $response->isOK ()) {
//				Globle::logError($image." 删除失败，请手动删除");
//			}
//	    }
        //本地删除文件 百度调用，禁用
    	if($messageDO->bigimage!=""){
    		if(!unlink($destination_folder.$messageDO->bigimage) )
    		{
    			Globle::logError($messageDO->bigimage." 删除失败，请手动删除");
    		}
    	}

    	if($target){
    		Globle::$smarty->assign("target","true");
    	}else{
    		Globle::$smarty->assign("target","false");
    	}
    	Globle::$smarty->assign("bigimage",$month_folder."/".$newfilename);
    	Globle::$smarty->display('new_big_photo.tpl');

    }
    else if($_REQUEST['type'] == "image"){

    	if($messageDO->image!=""){
    		$newfilename = $messageDO->image.",".$month_folder."/".$newfilename;
    	}else{
            $newfilename = $month_folder."/".$newfilename;
        }
    	$target = MyDB::updateInfoImageDB($newfilename, $user_id,$link);

    	if($target){
    		Globle::$smarty->assign("target","true");
    	}else{
    		Globle::$smarty->assign("target","false");
    	}
    	$images = explode(",", $newfilename);
    	Globle::$smarty->assign("images",$images);
    	Globle::$smarty->display('new_image.tpl');
    }
    
}
else{
	echo '<script>location.href="new_big_photo.php"</script>';
}
?>