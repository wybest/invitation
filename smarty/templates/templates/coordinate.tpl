
{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
      <div class="alert alert-danger">操作失败，重新提交</div>    
{#/if#}  
{#$message#}

<script	type="text/javascript" src="http://api.map.baidu.com/api?v=1.2"></script>

<script language="JavaScript">

		function FileChange_1_a(Value){
		flag=false;
		document.getElementById("File_1_a").alt="";
		document.getElementById("File_1_a").src=Value;
		}
		function FileChange_1_b(Value){
			flag=false;
			document.getElementById("File_1_b").alt="";
			document.getElementById("File_1_b").src=Value;
		}
		
		
		function FormCheck() 
		{ 
		if (document.Form1.nameCn.value =="") 
		{ 
			alert("请输入标题"); 
			document.Form1.nameCn.focus(); 
			return (false);
		}
		
		}
		
		
		</script>




<table border="0" cellpadding="0" cellspacing="0" width="100%"
	height="40">

	<TR>
		<td align=center class=text9>编辑地图</td>
	</TR>
</table>





<table border="1" width="100%" cellPadding="10"
	style="border-collapse: collapse" bordercolor="#DDDDDD">
	<TR>

	</TR>
	<TR>
		<TD align="right" bgcolor=""><B>地图：</B></TD>
		<TD bgcolor="">
		<form class="form-inline" role="form" action="" method="get">
			
		<div class="form-group">
		    <input class="form-control" placeholder="地点" id="where"
			name="where" type="text">
		  </div>
		
		  <input type="button" value="地图上找" class="btn btn-primary"
			onClick="sear(document.getElementById('where').value);" />
			
			<br />
		<div style="width: 100%; height: 340px; border: 1px solid gray"
			id="container"></div>
         
		</form>
		<script type="text/javascript">
var map = new BMap.Map("container");//在指定的容器内创建地图实例
map.setDefaultCursor("crosshair");//设置地图默认的鼠标指针样式
map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
map.centerAndZoom(new BMap.Point(116.404, 39.915), 15);
map.addControl(new BMap.NavigationControl()); 
map.addEventListener("click", function(e){//地图单击事件
	map.clearOverlays(); 
	document.getElementById("coordinate").value = e.point.lng + ", " + e.point.lat;
});
map.panBy(450,170)
/*function iploac(result){//根据IP设置地图中心
    var cityName = result.name;
    map.setCenter(cityName);
}
var myCity = new BMap.LocalCity();
myCity.get(iploac);*/

	var pt = new BMap.Point(116.404, 39.915);
	var myIcon = new BMap.Icon("markers.gif", new BMap.Size(25,21));
	var marker2 = new BMap.Marker(pt,{
		icon:myIcon
	});// 创建标注
	map.addOverlay(marker2);// 将标注添加到地图中
function sear(result){//地图搜索
	var local = new BMap.LocalSearch(map, {
  		renderOptions:{map: map}
	});
	local.search(result);
}


function G(id) {
    return document.getElementById(id);
}
var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
    {"input" : "where"
    ,"location" : map
});
ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
var str = "";
    var _value = e.fromitem.value;
    var value = "";
    if (e.fromitem.index > -1) {
        value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
    }    
    str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
    
    value = "";
    if (e.toitem.index > -1) {
        _value = e.toitem.value;
        value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
    }    
    str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
    G("searchResultPanel").innerHTML = str;
});

var myValue;
ac.addEventListener("onconfirm", function(e) { 
 sear(document.getElementById('where').value)
});
</script></TD>

	</TR>
	<form method="post" enctype="multipart/form-data" name="Form1"
		action="save_coordinate.php">
	<TR>
		<TD align="right" bgcolor=""><B>地图坐标：</B></TD>
		<TD bgcolor=""><input id="coordinate" name="coordinate" type="text"
			readonly="readonly" value="{#$coordinate#}">
		&nbsp;通过十字鼠标的单击地图，获取位置的正确经纬值。</TD>
	</TR>

	<TR>
		<td height="30" align="center" colSpan="2"><input class="btn btn-primary" type="submit" value="提 交"
			onClick="javascript:return FormCheck();"></td>
	</TR>
	</form>
</table>
