<?php
/**
 * MySQL示例，通过该示例可熟悉BAE平台MySQL的使用（CRUD）
 */
require_once("configure.php");
	/*替换为你自己的数据库名（可从管理中心查看到）*/
//	$dbname = "tqwutNLTiMWYdtjewvsL";
//	 
//	/*从环境变量里取出数据库连接需要的参数*/
//	$host = getenv('HTTP_BAE_ENV_ADDR_SQL_IP');
//	$port = getenv('HTTP_BAE_ENV_ADDR_SQL_PORT');
//	$user = getenv('HTTP_BAE_ENV_AK');
//	$pwd = getenv('HTTP_BAE_ENV_SK');
	
//	$dbname = "invitation";
//
//	$host = "localhost";
//	$port = "3306";
//	$user = "root";
//	$pwd = "880507";

    $dbname = "invitation";

	$host = "localhost";
	$port = "3306";
	$user = "root";
	$pwd = "20120404";

//	echo $host." ".$port." ".$user." ".$pwd." ";
	
	/*接着调用mysql_connect()连接服务器*/
	$link = @mysql_connect("{$host}:{$port}",$user,$pwd,true);
	if(!$link) {
	  die("Connect Server Failed: " . mysql_error());
	}
	/*连接成功后立即调用mysql_select_db()选中需要连接的数据库*/
	if(!mysql_select_db($dbname,$link)) {
	  die("Select Database Failed: " . mysql_error($link));
	}
	mysql_query("SET NAMES 'utf8'");
	/*至此连接已完全建立，就可对当前数据库进行相应的操作了*/
	/*！！！注意，无法再通过本次连接调用mysql_select_db来切换到其它数据库了！！！*/
	/* 需要再连接其它数据库，请再使用mysql_connect+mysql_select_db启动另一个连接*/

?>
