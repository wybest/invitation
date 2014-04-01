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


    $file = $_FILES["upfile"];
    $oldname = $_FILES['upfile']['name'];
//检查文件类型
    if (!preg_match('/\\.(gif|jpe?g)$/i', $oldname, $match))
        die('只能上传gif、jpg、jpeg格式的图片！');


    $destination_folder="marryimg/";
    $month_folder = date('Y-m');
    $newfilename = date('Y-m-d-H-i-s').".".$match[1];

    $newname = $destination_folder.$month_folder."/".$newfilename;

    if(!file_exists($destination_folder.$month_folder."/"))
    {
    	mkdir($destination_folder.$month_folder."/");
    }

    $uploadfile = $_FILES['upfile']['tmp_name'];

//输出图片,生成缩略图
    if (function_exists("imagecreatefromgif")) {

        $im = null;
        $newim = null;
        $count = 1;
        $size = $file["size"];
        while(true){

            if ($match[1] == 'gif')
                $im = imagecreatefromgif($uploadfile);
            else
                $im = imagecreatefromjpeg($uploadfile);
            $oldw = imagesx($im);
            $oldh = imagesy($im);
            $x = $oldw;
            $y = $oldh;

            if($oldw>$oldh)
            {

                if($x > 1400){
                    $x = 1400;
                    $y = 932;
                }elseif($x == 1400){
                    $x = 1000;
                    $y = 666;
                }elseif($x == 1000){
                    $x = 900;
                    $y = 599;
                }elseif($x == 900){
                    $x = 800;
                    $y = 533;
                }elseif($x == 800){
                    $x = 700;
                    $y = 466;
                }elseif($x == 700){
                    $x = 600;
                    $y = 399;
                }elseif($x == 600){
                    $x = 500;
                    $y = 333;
                }elseif($x == 500){
                    $x = 400;
                    $y = 266;
                }elseif($x == 400){
                    $x = 300;
                    $y = 199;
                }
            }else{

                if($x > 1066){
                    $x = 1066;
                    $y = 1600;
                }elseif($x == 1066){
                    $x = 700;
                    $y = 1050;
                }elseif($x == 700){
                    $x = 600;
                    $y = 900;
                }elseif($x == 600){
                    $x = 500;
                    $y = 750;
                }elseif($x == 500){
                    $x = 400;
                    $y = 500;
                }elseif($x == 400){
                    $x = 300;
                    $y = 450;
                }elseif($x == 300){
                    $x = 200;
                    $y = 300;
                }elseif($x == 200){
                    $x = 100;
                    $y = 150;
                }
            }





            if(function_exists("imagecopyresampled")) {
                $newim = imagecreatetruecolor($x, $y);
                imagecopyresampled($newim, $im, 0, 0, 0, 0, $x, $y, $oldw, $oldh);
            }
            else {
                $newim = imagecreate($x, $y);
                imagecopyresized($newim, $im, 0, 0, 0, 0, $x, $y, $oldw, $oldh);
            }
            if ($match[1] == 'gif') {
                imagegif($newim,$newname);
            }
            else {
                imagejpeg($newim,$newname);
            }
            $size = filesize($newname);
            echo "size=".$size."  x=".$x."  y=".$y;

            if($size<200*1024){
                break;
            }else{
                $uploadfile =  $newname;
                $oldw = $x;
                $oldh = $y;
            }
            if($count>=5)
                break;

            $count++;
            imagedestroy($im);
            imagedestroy ($newim);
        }

        echo  "newsize=".filesize($newname);
        if ($match[1] == 'gif')
            $im = imagecreatefromgif($newname);
        else
            $im = imagecreatefromjpeg($newname);
        $oldw = imagesx($im);
        $oldh = imagesy($im);
        $x = $oldw;
        $y = $oldh;

        if($oldw>$oldh){
            $x = 800;
            $y = 533;
        }else{
                $x = 500;
                $y = 750;
        }

        if(function_exists("imagecopyresampled")) {
            $newim = imagecreatetruecolor($x, $y);
            imagecopyresampled($newim, $im, 0, 0, 0, 0, $x, $y, $oldw, $oldh);
        }
        else {
            $newim = imagecreate($x, $y);
            imagecopyresized($newim, $im, 0, 0, 0, 0, $x, $y, $oldw, $oldh);
        }
        if ($match[1] == 'gif') {
            imagegif($newim,$newname);
        }
        else {
            imagejpeg($newim,$newname);
        }

        imagedestroy($im);
        imagedestroy ($newim);
    }
    else {
        echo '当前环境支持GD库，没有生成缩略图！';
    }



//	//检查信息是存在
//	$messageDO = MyDB::selectInfoDB($user_id,$link);
//
//	if($messageDO==null){
//		$message = "请先完成 “请柬信息设置”";
//		Globle::$smarty->assign("message",$message);
//
//		if($_REQUEST['type'] == "big"){
//			Globle::$smarty->display('big_photo.tpl');
//		}
//		else if($_REQUEST['type'] == "image"){
//			Globle::$smarty->display('image.tpl');
//		}
//
//		die();
//	}
//
//	$uptypes=array(
//    'image/jpg',
//    'image/jpeg',
//    'image/png',
//    'image/pjpeg',
//    'image/gif',
//    'image/bmp',
//    'image/x-png'
//    );
//    $destination_folder="marryimg/";
//    $allmessage = "";
//    if (!is_uploaded_file($_FILES["upfile"][tmp_name]))
//    //是否存在文件
//    {
//    	$message = "图片不存在!";
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
//    }
//
//    $file = $_FILES["upfile"];
//    if(200*1024 < $file["size"])
//    //检查文件大小
//    {
//    	$message = "文件太大,不要超过200KB";
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
//    }
//
//    if(!in_array($file["type"], $uptypes))
//    //检查文件类型
//    {
//    	$message = "文件类型不符!".$file["type"]."";
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
//    }
//
//    $month_folder = date('Y-m');
//
//    if(!file_exists($destination_folder.$month_folder."/"))
//    {
//    	mkdir($destination_folder.$month_folder."/");
//    }
//
//    $filename=$file["tmp_name"];
//  //	$image_size = getimagesize($filename);
//    $pinfo=pathinfo($file["name"]);
//    $tmppinfo=pathinfo($file["tmp_name"]);
//
////    $pinfo=pathinfo($file["name"]);
////    echo $pinfo["basename"];
//    $ftype=$pinfo['extension'];
//    //	$destination = $destination_folder.time().".".$ftype;
//    //    $filename = date('Y-m-d-H-i-s').".".$ftype;
//    if (file_exists($destination) && $overwrite != true)
//    {
//    	$message = "同名文件已经存在了";
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
//    }
//    $newfilename = date('Y-m-d-H-i-s').".".$ftype;
//
//    $object = '/'.$newfilename;
//    $fileUpload = $tmppinfo['dirname']."/".$tmppinfo['basename'];
//
//    //禁用百度云存储，速度太慢
////    $opt = array ("acl" => "public-read" );
////	$response = $baiduBCS->create_object ( $bucket, $object, $fileUpload );
////	if (! $response->isOK ()) {
////		$message = "移动文件出错,亲重新上传";
////    	Globle::$smarty->assign("message",$message);
////
////    	if($_REQUEST['type'] == "big"){
////    		Globle::$smarty->display('big_photo.tpl');
////    	}
////    	else if($_REQUEST['type'] == "image"){
////    		Globle::$smarty->display('image.tpl');
////    	}
////
////    	exit;
////	}
//
////   本地存储
////	echo "Create object[$object] in bucket[$bucket] success\n";
//
//    if(!move_uploaded_file ($filename, $destination_folder.$month_folder."/".$newfilename))
//    {
//    	$message = "移动文件出错,亲重新上传";
//    	Globle::$smarty->assign("message",$message);
//
//    	if($_REQUEST['type'] == "big"){
//    		Globle::$smarty->display('new_big_photo.tpl');
//    	}
//    	else if($_REQUEST['type'] == "image"){
//    		Globle::$smarty->display('new_image.tpl');
//    	}
//
//    	exit;
//    }
//
//
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