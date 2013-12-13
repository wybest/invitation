<?php
/*���4����д��ĸ��֤���ͼƬ
 rand(�����)�����ӣ�rand(0,9)�����0-9�е�һ������
 dechex(ʮ������)��ʮ����תʮ����ƣ����ӣ�$a=dechex(10) ��$aΪa
 */
session_start();  //����session
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

$_SESSION['sn']=$rs;  //������ַ�洢��session��������sn��

//$im=imagecreatetruecolor(60,20);���ֻ���Ǻ�ɫ����
$im=imagecreate(60,20);
$bgcolor=imagecolorallocate($im,rand(1,255),0,rand(1,255)); //���������ɫ
$fontcolor=imagecolorallocate($im,0,255,0); //д�����ֵ���ɫ
imagestring($im,6,11,2,$rs,$fontcolor); //��$str�ַ�д��ͼƬ$im,����ɫ$fontcolor������ʽ5��ͼƬλ�ã�15��10����ʼ
//header("Content_type:image/jpeg");
//imagejpeg($im);
header("Content_type:image/png; charset=UTF-8");
imagepng($im);
imagedestroy($im);
?>