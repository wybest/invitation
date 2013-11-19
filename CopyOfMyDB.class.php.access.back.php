<?php

class  MyDB {

	public static function updateUserLastTimeDB($name){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
			
		$query   =   "update user set last_time=now()   where name='".$name."'";
		$result   =$conn->Execute($query);
	}

	public static function insertUserDB(){
		$connstr="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		$connid=odbc_connect($connstr,"","",SQL_CUR_USE_ODBC);
		$sql="INSERT INTO user (user,password) VALUES ('aa','aaaa')";
		$result=odbc_exec($connid,$sql);
		if($result) echo "successful";
		else echo "failed";
	}

	public static function deleteUserDB(){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
		$query   =   "delete   from   user   where ID=25";
		$result   =$conn->Execute($query);
		if($result)
		echo   "É¾³ý³É¹¦";
		else
		echo   "É¾³ýÊ§°Ü";
	}

	public static function selectUserDB($name,$password){
		$conn=new COM("ADODB.Connection");
		$dsn="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		//Uid=Admin; Pwd=BDC2002Data;
		$conn->open($dsn);
		$sql="select * from user where name='".$name."' and password='".$password."'";// name='"+$name+"' and password='"+$password+"'"
		$rs=$conn->Execute($sql);
		$row="0";
		if(!$rs->EOF){
			return true;
		}else{
			return false;
		}

		//		while(!$rs->EOF)
		//		{
		//			$string ="";
		//			for ($i=0;$i<$rs->Fields->count;$i++)
		//			{
		//				if ($i==0)
		//				{
		//					$string.=$rs->Fields($i)->Value;
		//					continue;
		//				}
		//				$string.='|'.$rs->Fields($i)->Value;
		//			}
		//			$string.="\n";
		//			if ($row==300)
		//			{
		//				break;
		//			}
		//			$row++;
		//			echo "<br>";
		//			echo $string;
		//			$rs->MoveNext();
		//		}
	}

	public static function insertInfoDB($mould,$music,$man,$women,$lasttime,$house,$adress,$user_id,$show_time,$mini_time,$title,$message,$image,$bigimage,$nongli,$bigtitle){
		$connstr="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		$connid=odbc_connect($connstr,"","",SQL_CUR_USE_ODBC);
		$sql="INSERT INTO message (mould,music,man,women,lasttime,house,adress,user_id,show_time,mini_time,title,message,image,bigimage,nongli,bigtitle) VALUES ('".$mould."','".$music."','".$man."','".$women."','".$lasttime."','".$house."','".$adress."','".$user_id."','".$show_time."','".$mini_time."','".$title."','".$message."','".$image."','".$bigimage."','".$nongli."','".$bigtitle."')";
		$result=odbc_exec($connid,$sql);
		if($result) return true;
		else return false;
	}
	
	public static function insertInfoCoordinateDB($coordinate,$user_id){
		$connstr="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		$connid=odbc_connect($connstr,"","",SQL_CUR_USE_ODBC);
		$sql="INSERT INTO message (coordinate,user_id) VALUES ('".$coordinate."','".$user_id."')";
		$result=odbc_exec($connid,$sql);
		if($result) return true;
		else return false;
	}

	public static function selectInfoDB($name){
		$conn=new COM("ADODB.Connection");
		$dsn="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		//Uid=Admin; Pwd=BDC2002Data;
		$conn->open($dsn);
		$sql="SELECT * FROM message where user_id='".$name."'";
		$rs=$conn->Execute($sql);
		$messageDO = null;
		if(!$rs->EOF)
		{
			$messageDO = new MessageDO();
			$messageDO->mould=$rs->Fields("mould")->Value;
			$messageDO->music=$rs->Fields("music")->Value;
			$messageDO->man=$rs->Fields("man")->Value;
			$messageDO->women=$rs->Fields("women")->Value;
			$messageDO->lasttime=$rs->Fields("lasttime")->Value;
			$messageDO->house=$rs->Fields("house")->Value;
			$messageDO->adress=$rs->Fields("adress")->Value;
			$messageDO->coordinate=$rs->Fields("coordinate")->Value;
			$messageDO->user_id=$rs->Fields("user_id")->Value;
			$messageDO->show_time=$rs->Fields("show_time")->Value;
			$messageDO->mini_time=$rs->Fields("mini_time")->Value;
			$messageDO->title=$rs->Fields("title")->Value;
			$messageDO->message=$rs->Fields("message")->Value;
			$messageDO->image=$rs->Fields("image")->Value;
			$messageDO->bigimage=$rs->Fields("bigimage")->Value;
			$messageDO->nongli=$rs->Fields("nongli")->Value;
			$messageDO->bigtitle=$rs->Fields("bigtitle")->Value;
			$rs->MoveNext();
		}
		return $messageDO;
	}

	public static function updateInfoDB($mould,$music,$lasttime,$house,$adress,$message,$show_time,$mini_time,$title,$nongli,$name,$bigtitle){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
			
		$query   =   "update message set mould='".$mould."',music='".$music."',lasttime='".$lasttime."',house='".$house."',adress='".adress."',message='".$message."',show_time='".$show_time."',mini_time='".$mini_time."',title='".$title."',nongli='".$nongli."',bigtitle='".$bigtitle."' where user_id='".$name."'";
		$result   =$conn->Execute($query);
			
		if($result)
		return true;
		else
		return false;
	}

	public static function updateInfoCoordinateDB($coordinate,$name){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
			
		$query   =   "update message set coordinate='".$coordinate."' where user_id='".$name."'";
		$result   =$conn->Execute($query);
			
		if($result)
		return true;
		else
		return false;
	}
	
	public static function updateInfoGigPhotoDB($bigimage,$name){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
			
		$query   =   "update message set bigimage='".$bigimage."' where user_id='".$name."'";
		$result   =$conn->Execute($query);
			
		if($result)
		return true;
		else
		return false;
	}
	
	public static function updateInfoImageDB($image,$name){
		$conn = new com("ADODB.Connection");
		$connstr = "DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=". realpath("shuju.mdb");
		$conn->Open($connstr);
			
		$query   =   "update message set image='".$image."' where user_id='".$name."'";
		$result   =$conn->Execute($query);
			
		if($result)
		return true;
		else
		return false;
	}
	
	public static function insertShujuDB($name, $pnum, $yes, $bless,$user_id){
		$connstr="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		$connid=odbc_connect($connstr,"","",SQL_CUR_USE_ODBC);
		$sql="INSERT INTO shuju (name, pnum, yes, bless,user_id) VALUES ('".$name."', '".$pnum."', '".$yes."', '".$bless."','".$user_id."')";
		$result=odbc_exec($connid,$sql);
		if($result)
		return true;
		else
		return false;
	}
	
	public static function selectShujuDB($name,$page,$pagesize){
		$conn=new COM("ADODB.Connection");
		$dsn="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		//Uid=Admin; Pwd=BDC2002Data;
		
		$page = $page-1;
		$count = $page*$pagesize;
		$conn->open($dsn);
		if($page==0){
			$sql="select top ".$pagesize." * from shuju  order by id desc";
		}else{
			$sql="select top ".$pagesize." * from shuju  where id not in(select top ".$count." id from shuju order by id desc) order by id desc";
		}
		
		
		$rs=$conn->Execute($sql);
        $shuju_array = array();
        
		while(!$rs->EOF)
		{
			$shujuDO = new ShujuDO();
			$shujuDO->id = $rs->Fields("id")->Value;
			$shujuDO->name = $rs->Fields("name")->Value;
			$shujuDO->pnum = $rs->Fields("pnum")->Value;
			$shujuDO->yes = $rs->Fields("yes")->Value;
			$shujuDO->bless = $rs->Fields("bless")->Value;
			$shujuDO->user_id = $rs->Fields("user_id")->Value;
			$shujuDO->time = $rs->Fields("time")->Value;
			array_push($shuju_array,$shujuDO); 
			$rs->MoveNext();
		}
		return $shuju_array;
	}
	
    public static function selectShujuCountDB($name){
		$conn=new COM("ADODB.Connection");
		$dsn="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		//Uid=Admin; Pwd=BDC2002Data;
		$conn->open($dsn);
		$sql="select count(*) from shuju";
		
		$rs=$conn->Execute($sql);
        
		if(!$rs->EOF)
		{
			return $rs->Fields(0)->Value;
		}
		return 0;
	}
	
	public static function selectShujuByIdDB($id){
		$conn=new COM("ADODB.Connection");
		$dsn="DRIVER={Microsoft Access Driver (*.mdb)};DBQ=".realpath("shuju.mdb");
		//Uid=Admin; Pwd=BDC2002Data;
		
		$conn->open($dsn);
		$sql="select * from shuju where id=".$id;
		
		$rs=$conn->Execute($sql);
		
        $shujuDO = new ShujuDO();
		if(!$rs->EOF)
		{
			$shujuDO->id = $rs->Fields("id")->Value;
			$shujuDO->name = $rs->Fields("name")->Value;
			$shujuDO->pnum = $rs->Fields("pnum")->Value;
			$shujuDO->yes = $rs->Fields("yes")->Value;
			$shujuDO->bless = $rs->Fields("bless")->Value;
			$shujuDO->user_id = $rs->Fields("user_id")->Value;
			$shujuDO->time = $rs->Fields("time")->Value;
		}
		return $shujuDO;
	}
	
}

?>
