<?php

class  MyDB {

	public static function updateUserLastTimeDB($name,$link){

		$sql = "update user set last_time=now()   where name='".$name."'";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}

	public static function insertUserDB($name,$password,$email,$link){

		$sql="INSERT INTO user (name,password,creat_time,vip_num,is_pay,email) VALUES ('".$name."','".$password."',NOW(),10,0,'".$email."')";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}

	public static function deleteUserDB(){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
		$query   =   "delete   from   user   where ID=25";
		$result   =$conn->Execute($query);
		if($result)
		echo   "删除成功";
		else
		echo   "删除失败";
	}

	public static function updateUserPasswordDB($name,$link){

		$sql = "update user set is_pay=1  where name='".$name."'";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			$row =  mysql_affected_rows($link);
			if($row>0){
				return true;
			}else{
				return false;
			}
		}
	}

	public static function selectUserDB($name,$password,$link){

		$sql="select * from user where name='".$name."' and password='".$password."'";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return null;
		} else {
			if(mysql_num_rows($ret)==0){
				return null;
			}else{
				$user = new UserDO();
				$row = mysql_fetch_array($ret);
				$user->id = $row["id"];
				$user->name = $row["name"];
				$user->password = $row["password"];
				$user->vip_num = $row["vip_num"];
				$user->is_pay = $row["is_pay"];
				return $user;
			}
		}
	}
	
	public static function selectUserByNameDB($name,$link){

		$sql="select * from user where name='".$name."'";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return null;
		} else {
			if(mysql_num_rows($ret)==0){
				return null;
			}else{
				$user = new UserDO();
				$row = mysql_fetch_array($ret);
				$user->id = $row["id"];
				$user->name = $row["name"];
				$user->password = $row["password"];
				$user->vip_num = $row["vip_num"];
				$user->is_pay = $row["is_pay"];
				return $user;
			}
		}
	}
	
	public static function selectUserByIdDB($user_id,$link){

		$sql="select * from user where id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return null;
		} else {
			if(mysql_num_rows($ret)==0){
				return null;
			}else{
				$user = new UserDO();
				$row = mysql_fetch_array($ret);
				$user->id = $row["id"];
				$user->name = $row["name"];
				$user->password = $row["password"];
				$user->vip_num = $row["vip_num"];
				$user->is_pay = $row["is_pay"];
				return $user;
			}
		}
	}

	public static function insertInfoDB($mould,$music,$man,$women,$lasttime,$house,$adress,$user_id,$show_time,$mini_time,$title,$message,$image,$bigimage,$bigtitle,$link){
		$sql="INSERT INTO message (mould,music,man,women,lasttime,house,adress,user_id,show_time,mini_time,title,message,image,bigimage,bigtitle) VALUES ('".$mould."','".$music."','".$man."','".$women."','".$lasttime."','".$house."','".$adress."',".$user_id.",'".$show_time."','".$mini_time."','".$title."','".$message."','".$image."','".$bigimage."','".$bigtitle."')";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			//			echo "Select Failed: " . mysql_error($link);
			return false;
		} else {
			return true;
		}
	}

	public static function insertInfoCoordinateDB($coordinate,$user_id){
		$connstr="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		$connid=odbc_connect($connstr,"","",SQL_CUR_USE_ODBC);
		$sql="INSERT INTO message (coordinate,user_id) VALUES ('".$coordinate."','".$user_id."')";
		$result=odbc_exec($connid,$sql);
		if($result) return true;
		else return false;
	}

	public static function selectInfoDB($user_id,$link){

		$sql="SELECT * FROM message where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		$messageDO = null;
		if ($ret === false) {
			return $messageDO;
		} else {
				
			if(mysql_num_rows($ret)==0){
				return $messageDO;
			}else{
				$messageDO = new MessageDO();
				while ($row = mysql_fetch_assoc($ret)) {
					$messageDO->mould=$row['mould'];
					$messageDO->music=$row['music'];
					$messageDO->man=$row['man'];
					$messageDO->women=$row['women'];
					$messageDO->lasttime=$row['lasttime'];
					$messageDO->house=$row['house'];
					$messageDO->adress=$row['adress'];
					$messageDO->coordinate=$row['coordinate'];
					$messageDO->user_id=$row['user_id'];
					$messageDO->show_time=$row['show_time'];
					$messageDO->mini_time=$row['mini_time'];
					$messageDO->title=$row['title'];
					$messageDO->message=$row['message'];
					$messageDO->image=$row['image'];
					$messageDO->bigimage=$row['bigimage'];
					$messageDO->bigtitle=$row['bigtitle'];
				}
				return $messageDO;
			}
				
		}

	}

	public static function updateInfoDB($mould,$music,$lasttime,$house,$adress,$message,$show_time,$mini_time,$title,$name,$bigtitle,$link){

		$sql="update message set mould='".$mould."',music='".$music."',lasttime='".$lasttime."',house='".$house."',adress='".$adress."',message='".$message."',show_time='".$show_time."',mini_time='".$mini_time."',title='".$title."',bigtitle='".$bigtitle."' where user_id='".$name."'";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}

	public static function updateInfoCoordinateDB($coordinate,$user_id,$link){

		$sql="update message set coordinate='".$coordinate."' where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}

	public static function updateInfoGigPhotoDB($bigimage,$user_id,$link){

		$sql="update message set bigimage='".$bigimage."' where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}

	public static function updateInfoImageDB($image,$user_id,$link){

		$sql="update message set image='".$image."' where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}

	public static function insertShujuDB($name, $pnum, $bless,$user_id,$link){

		$sql="INSERT INTO shuju (name, pnum, bless,user_id,time) VALUES ('".$name."', '".$pnum."', '".$bless."',".$user_id.",now())";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			die("Create Table Failed: " . mysql_error($link));
		} else {
			return true;
		}
	}

	public static function selectShujuDB($user_id,$page,$pagesize,$link){
		$shuju_array = array();
		$page = $page-1;
		$count = $page*$pagesize;
		$sql="select * from shuju where user_id=".$user_id." order by id LIMIT ".$count.",".$pagesize;
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return $shuju_array;
		} else {
			while ($row = mysql_fetch_assoc($ret)) {
					
				$shujuDO = new ShujuDO();
				$shujuDO->id = $row["id"];
				$shujuDO->name = $row["name"];
				$shujuDO->pnum = $row["pnum"];
				$shujuDO->bless = $row["bless"];
				$shujuDO->user_id = $row["user_id"];
				$shujuDO->time = $row["time"];
				array_push($shuju_array,$shujuDO);
			}
			return $shuju_array;
		}
	}
	
	public static function selectShujuByNameDB($user_id,$firend,$link){
		$sql="select * from shuju where user_id=".$user_id." and name = '".$firend."' ";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			if(mysql_num_rows($ret)==0){
				return false;
			}else{
				return true;
			}
		}
	}

	public static function selectShujuCountDB($user_id,$link){
		 
		$sql="select count(*) as num from shuju where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return 0;
		} else {
			$row = mysql_fetch_array($ret);
			return $row['num'];
		}
	}

	public static function selectShujuByIdDB($id,$link){

		$sql="select * from shuju where id=".$id;
		$ret = mysql_query($sql, $link);
		$shujuDO = new ShujuDO();
		if ($ret === false) {
			return $shujuDO;
		} else {
			$row = mysql_fetch_array($ret);
			$shujuDO->id = $row["id"];
			$shujuDO->name = $row["name"];
			$shujuDO->pnum = $row["pnum"];
			$shujuDO->yes = $row["yes"];
			$shujuDO->bless = $row["bless"];
			$shujuDO->user_id = $row["user_id"];
			$shujuDO->time = $row["time"];
			return $shujuDO;
		}
	}

	public static function selectVipDB($user_id,$link){
		$vip_array = array();
		$sql="select * from vip where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return $vip_array;
		} else {
			if(mysql_num_rows($ret)==0){
				return $vip_array;
			}else{
				while ($row = mysql_fetch_assoc($ret)) {
					$vip = new VipDO();
					$vip->id = $row["id"];
					$vip->user_id = $row["user_id"];
					$vip->vip_name = $row["vip_name"];
					array_push($vip_array,$vip);
				}
				return $vip_array;
			}
		}
	}
	
	public static function selectVipByVipNameAndUserIdDB($user_id,$vip_name,$link){
		$sql="select * from vip where user_id=".$user_id." and vip_name='".$vip_name."'";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			if(mysql_num_rows($ret)==0){
				return false;
			}else{
				return true;
			}
		}
	}
	
	public static function selectVipByIdDB($id,$link){
		$sql="select * from vip where id=".$id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return null;
		} else {
			if(mysql_num_rows($ret)==0){
				return null;
			}else{
				$row = mysql_fetch_array($ret);
				$vip = new VipDO();
				$vip->id = $row["id"];
				$vip->user_id = $row["user_id"];
				$vip->vip_name = $row["vip_name"];
				return $vip;
			}
		}
	}
	
	public static function countVipDB($user_id,$link){
		$sql="select count(id) as num from vip where user_id=".$user_id."";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return 0;;
		} else {
			$row = mysql_fetch_array($ret);
			return $row["num"];
		}
	}

	public static function insertVipDB($user_id, $vip_name,$link){

		$sql="INSERT INTO vip (user_id, vip_name,time) VALUES (".$user_id.", '".$vip_name."',now())";
		$ret = mysql_query($sql, $link);
		if ($ret === false) {
			return false;
		} else {
			return true;
		}
	}
}

?>
