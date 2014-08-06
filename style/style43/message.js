$("#message").css("top",(nHeight+15)+"px");
$(".btn-join").click(function (a) {
    a.preventDefault();
    a.stopPropagation();
	$(".hotel").addClass("blur");
	$(".control_up").hide();
    $("#message").show();
    $("#message").css("top",(nHeight-$("#message").height()-4)+"px");
});
$("#isCome").attr("checked","checked");
$("#isCome").click(function(e){
    if($("#isCome").attr("checked")){
        $("#isCome").removeAttr("checked");
        $("#isCome").css("background-position","0 0")
    }else{
        $("#isCome").attr("checked","checked");
        $("#isCome").css("background-position","0 -22px")
    }
})
$(".message-close").click(function () {
	$(".hotel").removeClass("blur");
	$(".control_up").show();    
    $("#message").css("top",(nHeight+15)+"px");
    $("#message").hide();
});
$(".btn-map").click(function (a) {
	var temp = window.location.href.split("/").pop(),
		url = temp.split(".");
    window.location.href = "http://i2v.cn/qj/WZB/12.0/map.htm?zuobiao="+zuobiao+"&dizhi="+dizhi;
});
$.ajax({
    url:  "http://i2v.cn/BlessingWall/readBlessForPhone.asp?wangwang="+wangwangID,
    success: function (f) {
        var content = f.split('|').reverse(),
            many = content.length,
			joinNums = 0;
        if (!f) {
            $("#msg_board").html('<li id="no-message"><p><span class="name"></span></p><div class="txt">暂无祝福留言~~</div><p class="time"></p></li>')
        } else {
            $(".many").html(many);
            var d = [],
                b = "";
            for (var c = 0; c < many; c++) {
                if(parseInt(content[c].split('#')[3])==0){
                    var d = ['<li><p><span class="name">',content[c].split('#')[0], '</span>说：</p><div class="txt">', content[c].split('#')[1], '</div><p class="time" style="text-align:right">', content[c].split('#')[5], "</p></li>"];
                }else{
                    var d = ['<li><p><span class="name">',content[c].split('#')[0], '</span>说：</p><div class="txt">', content[c].split('#')[1], '</div><p class="time" style="text-align:right">(', content[c].split('#')[3], "人参加)&nbsp;",content[c].split('#')[5],"</p></li>"];
                }
                b += d.join("");
                joinNums += parseInt(content[c].split('#')[3]);
            }
			b+="<br><br>";
            $("#msg_board").html(b);
            $(".joinNums").html(joinNums);
        }
    }
}); 
function showMsg(d, b) {
    var c = $("#bubble-box"),
        a = $("#bubble");
    if (window.ptr) {
        clearTimeout(window.ptr);
        window.ptr = null
    }
    a.html(d);
    c.removeAttr("style");
    c.removeClass("cpm-hide");
    window.ptr = setTimeout(function () {
        c.animate({
            opacity: 0
        }, 700, "linear", function () {
            $(this).addClass("cpm-hide")
        })
    }, typeof (b) == "undefined" ? 1000 : b)
}
formatDate = function (c, b) {
    var d = addZero;
    var a = ["日", "一", "二", "三", "四", "五", "六"],
        e = b.replace(/yyyy|YYYY/, c.getFullYear()).replace(/yy|YY/, d(c.getFullYear() % 100, 2)).replace(/mm|MM/, d(c.getMonth() + 1, 2)).replace(/m|M/g, c.getMonth() + 1).replace(/dd|DD/, d(c.getDate(), 2)).replace(/d|D/g, c.getDate()).replace(/hh|HH/, d(c.getHours(), 2)).replace(/h|H/g, c.getHours()).replace(/ii|II/, d(c.getMinutes(), 2)).replace(/i|I/g, c.getMinutes()).replace(/ss|SS/, d(c.getSeconds(), 2)).replace(/s|S/g, c.getSeconds()).replace(/w/g, c.getDay()).replace(/W/g, a[c.getDay()]);
    return e
};
addZero = function (b, d) {
    for (var c = 0, a = d - (b + "").length; c < a; c++) {
        b = "0" + b
    }
    return b + ""
};