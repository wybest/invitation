<!--guest name-->
var gn=queryString("guestName");
var _title="恭候您的驾到！";
var _src="欢迎各位亲朋好友参加，Wi-Fi环境下欣赏效果更佳→";
if(isNull(img_url)){
	var img_url=getHref()+"0.jpg"
}else{ 
	if(img_url.toString().indexOf('http://')==-1){
		img_url=getHref()+img_url
	}
}
if(isNull(title)){var title=_title;}else{title=title?title:_title;}
if(isNull(src)){var src=_src;}else{src=src?src:_src;}
var contentModel = {"img_url": img_url,"title":gn?decodeURIComponent(gn):title,"src": src};
<!--end guest name-->