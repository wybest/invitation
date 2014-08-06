//2014__________________ 
//过滤脏话
function filterBadLanguage(t) {
	t = document.getElementById(t).value.toLowerCase();
	var word = "他妈的|他妈|它妈的|它妈|她妈的|她妈|妈的|老子|狗日的|TMD|tmd|Tmd|我靠|贱人|滚|操|妈逼|操逼|日逼|我靠|靠靠|我日|日你妈|日你|鸡巴|鸡鸡|妓女|我草|fuck|FUCK|Fuck|尿|拉屎|屎|口交|做爱|上床|肛交|打炮|车震|野炮|3P|群交|乳交|交配|毒龙|乳推|吃鸡|我擦|色魔|搞死|勃起|阴道|淫|乱伦|人兽|杂交|猪|尼玛|装逼|逼|去死|锤子|操|操你|操你吗|草泥马|垃圾|sb|Sb|SB";
	var wordArr = word.split('|');
	var len = wordArr.length;
	for (var i = 0; i < len; i++) {
		if (t.indexOf(wordArr[i]) != -1) {
			t = replace(t, wordArr[i], '*');
		}
	}
	return t.indexOf('*') == -1;
}
function isTelNumber(t){
	var re = /^[0-9,]*$/;
	t = document.getElementById(t).value;
	return re.test(t)&&t.length>=7&&t.length<=11;
}
function replace(s, s1, s2) {
	return s.toString().split(s1).join(s2);
}
function replaceHealthText(t,defaultText) {
	var _defaultText="亲，和谐社会，注意文明用语！"
	if (isNull(defaultText)) {
		var defaultText = _defaultText;
	} else {
		defaultText = defaultText ? defaultText: _defaultText;
	}
	
	t = document.getElementById(t);
	t.value = "";
	t.placeholder = defaultText;
}
function submit_2014(wangwang, email, sendname, renshu, tel, sendcontent, from) {

	if (isNull(from)) {
		var from = 0;
	} else {
		from = from ? from: 0;
	}

	email = getQQMail(email);
	var option = document.getElementById(renshu).value.toString();
	if (getRemoveSpace(document.getElementById(sendname).value) == "") {
		document.getElementById(sendname).placeholder = ('请填写您的姓名！');
	} else {
		if (filterBadLanguage(sendname) && filterBadLanguage(sendcontent)&& isTelNumber(tel)) {
			// send email 
			var sendname = document.getElementById(sendname).value;
			var sendtel = document.getElementById(tel).value;
			var obj = document.getElementById(renshu);
			var renshu = obj.options[obj.selectedIndex].text;
			var sendcontent = document.getElementById(sendcontent).value;
			post('http://i2v.cn/BlessingWall/saveBlessForPhone.asp', {
				wangwang: wangwang,
				guestName: sendname,
				content: sendcontent,
				from: from,
				personNumber: option == 's10' ? '0': obj.selectedIndex + 1,
				telphoneNumber: sendtel,
				email: email
			});

		} else {
			filterBadLanguage(sendname) || replaceHealthText(sendname);
			filterBadLanguage(sendcontent) || replaceHealthText(sendcontent);
			filterBadLanguage(tel) || replaceHealthText(tel);
			isTelNumber(tel)||replaceHealthText(tel,'请输入正确的电话号码！');
		}
	}
}
function getQQMail(qq) {
	return getRemoveSpace((qq.toString().indexOf("qq.com") == -1 && qq.toString().indexOf("@") == -1) ? (qq + "@qq.com") : qq);
}
function getRemoveSpace(s) {
	return s.toString().split(' ').join('').split('　').join('');
}
function post(URL, PARAMS) {
	var temp = document.createElement("form");
	temp.action = URL;
	temp.method = "post";
	temp.style.display = "none";
	for (var x in PARAMS) {
		var opt = document.createElement("textarea");
		opt.name = x;
		opt.value = PARAMS[x];
		// alert(opt.name)      
		temp.appendChild(opt);
	}
	document.body.appendChild(temp);
	temp.submit();
	return temp;
}
function isNull(o) {
	return (typeof o).toString() == "undefined";
}