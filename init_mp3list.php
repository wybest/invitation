<?php
//初始化音乐列表
require_once 'bcs.class.php';
$host = 'bcs.duapp.com'; 
$ak = '1uzZN9djgyBr3fxnuwdouHwP';
$sk = 'dysGQqeSi0HMyQFeiFhpBb6hbmydEKbe';
$bucket = 'mp3folder';

$baiduBCS = new BaiduBCS ( $ak, $sk, $host );
$responseCore = $baiduBCS->list_object_by_dir($bucket, '/',0);
if($responseCore->isOK()){
	$body = json_decode($responseCore->body);
	$object_list = $body->object_list;
	$lengh = sizeof($object_list);
	$smp3list = array();
 	for ($i = 0; $i < $lengh; $i++){
 		$dt_record = $object_list[$i];
// 		echo $dt_record->object."</br>";
 		array_push($smp3list,str_replace("/","",$dt_record->object)); 
    }
    
    Globle::$smarty->assign("mp3list",$smp3list);
}

?>