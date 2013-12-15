<?php
require_once 'bcs.class.php';
$host = 'bcs.duapp.com'; 
$ak = '1uzZN9djgyBr3fxnuwdouHwP';
$sk = 'dysGQqeSi0HMyQFeiFhpBb6hbmydEKbe';
$bucket = 'marryimg';

$baiduBCS = new BaiduBCS ( $ak, $sk, $host );


//下载百度云存储的文件

$responseCore = $baiduBCS->list_object_by_dir($bucket, '/',0);
if($responseCore->isOK()){
    $body = json_decode($responseCore->body);
    $object_list = $body->object_list;
    $lengh = sizeof($object_list);
    $smp3list = array();
//    for ($i = 0; $i < $lengh; $i++){
//        $dt_record = $object_list[$i];
//// 		echo $dt_record->object."</br>";
//        $fileWriteTo = "./marryimg/";
//
//        $opt = array (
//            "fileWriteTo" => $fileWriteTo.$dt_record->object );
//	$response = $baiduBCS->get_object ( $bucket, $dt_record->object, $opt );
//	if (! $response->isOK ()) {
//        die ( "Download object failed." );
//    }
//
//    }

    echo $lengh;

    $opt = array (
        "fileWriteTo" => $fileWriteTo. "2013-12-15-16-27-28.jpg" );
    $response = $baiduBCS->get_object ( $bucket, "2013-12-15-16-27-28.jpg", $opt );
    if (! $response->isOK ()) {
        die ( "Download object failed." );
    }


    echo "success";

}
?>
