<?php
//初始化音乐列表
//require_once 'bcs.class.php';
//$host = 'bcs.duapp.com';
//$ak = '1uzZN9djgyBr3fxnuwdouHwP';
//$sk = 'dysGQqeSi0HMyQFeiFhpBb6hbmydEKbe';
//$bucket = 'mp3folder';
//
//$baiduBCS = new BaiduBCS ( $ak, $sk, $host );
//$responseCore = $baiduBCS->list_object_by_dir($bucket, '/',0);
//if($responseCore->isOK()){
//	$body = json_decode($responseCore->body);
//	$object_list = $body->object_list;
//	$lengh = sizeof($object_list);
//	$smp3list = array();
// 	for ($i = 0; $i < $lengh; $i++){
// 		$dt_record = $object_list[$i];
//// 		echo $dt_record->object."</br>";
// 		array_push($smp3list,str_replace("/","",$dt_record->object));
//    }
//
//    Globle::$smarty->assign("mp3list",$smp3list);
//}

$i = 0;
$files = Array();
$filesId = Array();
$d = opendir("mp3folder");
while ($file = readdir($d))
{
    if ($file == '.' || $file == '..' || eregi($mask, $file) ) continue;
//    if (is_dir($dir.'/'.$file))
//    {
//        $files += ls($dir.'/'.$file, $mask);
//        continue;
//    }

    $file = str_replace('_',' ',$file);

    $files[$i++] = $file;
//    echo $dir.'/'.$file;
}
$files[1] = "23(feat. miley cyrus, wiz khalifa & juicy j).mp3";//1
$filesId[1] = "23(feat. miley cyrus, wiz khalifa & juicy j).mp3";

$files[2] = "17171771  紫雨林.mp3";//2
$filesId[2] = "17171771  紫雨林.mp3";

$files[3] = "A-Little-Love.mp3";//3
$filesId[3] = "A-Little-Love.mp3";

$files[4] = "Beautiful In White.mp3";//4
$filesId[4] = "Beautiful In White.mp3";

$files[5] = "Bruno Mars - Marry You .mp3";//5
$filesId[5] = "Bruno Mars - Marry You .mp3";

$files[6] = "Bruno Mars - The Lazy Song.mp3";//6
$filesId[6] = "Bruno Mars - The Lazy Song.mp3";

$files[7] = "Carpenters - Yesterday Once More.mp3";//7
$filesId[7] = "Carpenters - Yesterday Once More.mp3";

$files[8] = "chris-brown-you-with.mp3";//8
$filesId[8] = "chris-brown-you-with.mp3";

$files[9] = "couldThisBeLove.mp3";//9
$filesId[9] = "couldThisBeLove.mp3";

$files[10] = "Darin - Cant Stop Love.mp3";//10
$filesId[10] = "Darin - Cant Stop Love";

$files[11] = "Everyday.mp3";//11
$filesId[11] = "Everyday.mp3";

$files[12] = "I Know I Loved You (Live).mp3";//12
$filesId[12] = "I Know I Loved You (Live).mp3";

$files[13] = "I-Love-You.mp3";//13
$filesId[13] = "I-Love-You.mp3";

$files[14] = "IDo.mp3";//14
$filesId[14] = "IDo.mp3";

$files[15] = "John Michael Montgomery-I Swear.mp3";//15
$filesId[15] = "John Michael Montgomery-I Swear.mp3";

$files[16] = "Jumping Into Rivers.mp3";//16
$filesId[16] = "Jumping Into Rivers.mp3";

$files[17] = "space-love .mp3";//17
$filesId[17] = "space-love .mp3";

$files[18] = "Tattim-aw.mp3";//18
$filesId[18] = "Tattim-aw.mp3";

$files[19] = "we can work it out.mp3";//19
$filesId[19] = "we can work it out.mp3";

$files[20] = "今天你要嫁给我.mp3";//20
$filesId[20] = "今天你要嫁给我.mp3";

$files[21] = "可爱的韩国儿歌-三只小熊.mp3";//21
$filesId[21] = "可爱的韩国儿歌-三只小熊.mp3";

$files[22] = "同桌的你.mp3";//22
$filesId[22] = "同桌的你.mp3";

$files[23] = "吴建豪-小婚礼.mp3";//23
$filesId[23] = "吴建豪-小婚礼.mp3";

$files[24] = "咕叽之歌.mp3";//24
$filesId[24] = "咕叽之歌.mp3";

$files[25] = "坐在巷口的那对男女.mp3";//25
$filesId[25] = "坐在巷口的那对男女.mp3";

$files[26] = "夜的钢琴曲.mp3";//26
$filesId[26] = "夜的钢琴曲.mp3";

$files[27] = "小夫妻.mp3";//27
$filesId[27] = "小夫妻.mp3";

$files[28] = "小野丽莎-可爱的你.mp3";//28
$filesId[28] = "小野丽莎-可爱的你.mp3";

$files[29] = "幸福恋人 .mp3";//29
$filesId[29] = "幸福恋人 .mp3";


$files[30] = "心肝宝贝.mp3";//30
$filesId[30] = "心肝宝贝.mp3";

$files[31] = "恩典的记号.mp3";//31
$filesId[31] = "恩典的记号.mp3";

$files[32] = "我们结婚吧.mp3";//32
$filesId[32] = "我们结婚吧.mp3";


$files[33] = "方大同 - Nothing’s Gonna Change My Love For You.mp3";//33
$filesId[33] = "方大同 - Nothing’s Gonna Change My Love For You.mp3";

$files[34] = "最重要的决定.mp3";//34
$filesId[34] = "最重要的决定.mp3";

$files[35] = "爱很美.mp3";//35
$filesId[35] = "爱很美.mp3";

$files[36] = "纯音乐-梦中的婚礼.mp3";//36
$filesId[36] = "纯音乐-梦中的婚礼.mp3";

$files[37] = "终于等到你.mp3";//37
$filesId[37] = "37.mp3";

$files[38] = "给你们.mp3";//38
$filesId[38] = "给你们.mp3";

$files[39] = "胡俊逸-我的笑脸.mp3";//39
$filesId[39] = "胡俊逸-我的笑脸.mp3";

$files[40] = "苏打绿-无与伦比的美丽.mp3";//40
$filesId[40] = "苏打绿-无与伦比的美丽.mp3";

$files[41] = "谢谢爱.mp3";//41
$filesId[41] = "谢谢爱.mp3";

$files[42] = "钢琴曲 - 清新的婚礼轻音乐.mp3";//42
$filesId[42] = "钢琴曲 - 清新的婚礼轻音乐.mp3";

$files[43] = "陈慧琳 - Love Paradise.mp3";//43
$filesId[43] = "陈慧琳 - Love Paradise.mp3";

$files[44] = "陶喆-爱很简单.mp3";//44
$filesId[44] = "陶喆-爱很简单.mp3";

$files[45] = "青春纪念册.mp3";//45
$filesId[45] = "青春纪念册.mp3";

$files[46] = "德国童音.mp3";//46
$filesId[46] = "46.mp3";

$files[47] = "Cuppy Cake Song.mp3";//47
$filesId[47] = "47.mp3";

$files[48] = "夫妻相.mp3";//48
$filesId[48] = "48.mp3";

$files[49] = "爸爸去哪儿.mp3";//49
$filesId[49] = "49.mp3";

$files[50] = "幸福-盛晓玫.mp3";//50
$filesId[50] = "50.mp3";

$files[51] = "稳稳的幸福.mp3";//51
$filesId[51] = "51.mp3";

$files[52] = "来自星星的你.mp3";//52
$filesId[52] = "52.mp3";

$files[53] = "Chris Medina - What Are Words .mp3";//53
$filesId[53] = "53.mp3";

$files[54] = "i'm yours.mp3";//54
$filesId[54] = "54.mp3";

Globle::$smarty->assign("mp3list",$files);
Globle::$smarty->assign("mp3listId",$filesId);

?>