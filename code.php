<?php
/*生成4个大写字母验证码的图片
 rand(随机函数)；例子：rand(0,9)即随机0-9中的一个数字
 dechex(十进制数)，十进制转十六进制；例子：$a=dechex(10) 即$a为a
 */
session_start();  //启动session
for($i=0;$i<4;$i++)
{
	$sui=rand(1,26);
	switch($sui)
	{
		case 1:$str="a";break;
		case 2:$str="b";break;
		case 3:$str="c";break;
		case 4:$str="d";break;
		case 5:$str="e";break;
		case 6:$str="f";break;
		case 7:$str="g";break;
		case 8:$str="h";break;
		case 9:$str="i";break;
		case 10:$str="j";break;
		case 11:$str="k";break;
		case 12:$str="l";break;
		case 13:$str="m";break;
		case 14:$str="n";break;
		case 15:$str="o";break;
		case 16:$str="p";break;
		case 17:$str="q";break;
		case 18:$str="r";break;
		case 19:$str="s";break;
		case 20:$str="t";break;
		case 21:$str="u";break;
		case 22:$str="v";break;
		case 23:$str="w";break;
		case 24:$str="x";break;
		case 25:$str="y";break;
		case 26:$str="z";break;
	}
	$rs.=$str;
}

$_SESSION['sn']=$rs;  //把随机字符存储到session的随机名称sn中
//$im=imagecreatetruecolor(60,20);这个只能是黑色背景
$im=imagecreate(60,20);
$bgcolor=imagecolorallocate($im,rand(1,255),0,rand(1,255)); //（随机）背景颜色
$fontcolor=imagecolorallocate($im,0,255,0); //写入文字的颜色
imagestring($im,6,11,2,$rs,$fontcolor); //把$str字符串写入图片$im,用颜色$fontcolor字体样式5在图片位置（15，10）开始
//header("Content_type:image/jpeg");
//imagejpeg($im);
header("Content_type:image/png; charset=UTF-8");
imagepng($im);
imagedestroy($im);
?>