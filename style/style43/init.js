


//判断是否pc，如果是给默认480px高度，否则读取设备屏幕高度*/
var isPc = /(WindowsNT)|(Windows NT)|(Macintosh)/i.test(navigator.userAgent);
var nHeight = !isPc?$(window).height():480,
    nWidth = $(window).width();
$('.mod-story').height(nHeight);
$('.invitation').height(nHeight);
$('.hotel').height(nHeight);

changeOpen();
var pos = {},
	moving,
	mousedown = null,
	index = 0,
	direct = null,
	len = $(".page_item").size(),
	horizontal_1 = 0,
	horizontal_2 = 0,
	horizontal_3 = 0,
	horizontal_len_1 = $(".first_item").size(),
	horizontal_len_2 = $(".second_item").size(),
	horizontal_len_3 = $(".third_item").size();
function changeOpen(a) {	
    $(".page_item").bind("mousedown touchstart", page_touchstart);
    $(".page_item").bind("mousemove touchmove", page_touchmove);
    $(".page_item").bind("mouseup touchend mouseout", page_touchend);
}
function changeClose(a) {
    $(".page_item").off("mousedown touchstart");
    $(".page_item").off("mousemove touchmove");
    $(".page_item").off("mouseup touchend mouseout")
}    

function swipeDirection(x1, x2, y1, y2) {
    return Math.abs(x1-x2) >=Math.abs(y1-y2) ? (x1-x2>100 ? "left" : (x1-x2<-100 ? "right" : "middle")) : (y1-y2 > 100 ? "up" : (y1-y2<-100 ? "down" : "middle"));
}
function page_touchstart(a) {
    if (a.type == "touchstart") {
        pos.x1 = window.event.touches[0].pageX;
        pos.y1 = window.event.touches[0].pageY;
    } else {
        pos.x1 = a.pageX;
        pos.y1 = a.pageY;
    }
    mousedown = true
}

function page_touchmove(a) {
    if (!mousedown) {
        return false;
    }
    a.preventDefault();
    a.stopPropagation();
    if (a.type == "touchmove") {
        pos.x2 = window.event.touches[0].pageX;
        pos.y2 = window.event.touches[0].pageY;
    } else {
        pos.x2 = a.pageX;
        pos.y2 = a.pageY;
    }
    direct = swipeDirection(pos.x1, pos.x2, pos.y1, pos.y2);
    switch (direct) {
    case "left":
        /*if ($(".page_item.show").find(".first").length) {			
       		if (horizontal_1 == (horizontal_len_1 - 1)) {
				horizontal_1=-1;
       		}		
            $(".first_item").eq(horizontal_1 + 1).addClass("active").css("left", nWidth).css("left", nWidth + (pos.x2 - pos.x1));
        }*/
        if ($(".page_item.show").find(".second").length) {			
       		if (horizontal_2 == (horizontal_len_2 - 1)) {
				horizontal_2=-1;
       		}		
            $(".second_item").eq(horizontal_2 + 1).addClass("active").css("left", nWidth).css("left", nWidth + (pos.x2 - pos.x1));
        }
        /*if ($(".page_item.show").find(".third").length) {			
       		if (horizontal_3 == (horizontal_len_3 - 1)) {
				horizontal_3=-1;
       		}		
            $(".third_item").eq(horizontal_3 + 1).addClass("active").css("left", nWidth).css("left", nWidth + (pos.x2 - pos.x1));
        }*/
        break;
    case "right":
       /*if ($(".page_item.show").find(".first").length) {			
       		 if (horizontal_1 == 0) {
				horizontal_1=horizontal_len_1;
       		 }
			$(".first-title").addClass("active");
            $(".first_item").eq(horizontal_1 - 1).addClass("active").css("left", -nWidth).css("left", -nWidth + (pos.x2 - pos.x1)); 
        }*/
        if ($(".page_item.show").find(".second").length) {			
       		 if (horizontal_2 == 0) {
				horizontal_2=horizontal_len_2;
       		 }
			$(".second-title").addClass("active");
            $(".second_item").eq(horizontal_2 - 1).addClass("active").css("left", -nWidth).css("left", -nWidth + (pos.x2 - pos.x1)); 
        }
        /*if ($(".page_item.show").find(".third").length) {			
       		 if (horizontal_3 == 0) {
				horizontal_3=horizontal_len_3;
       		 }
			$(".third-title").addClass("active");
            $(".third_item").eq(horizontal_3 - 1).addClass("active").css("left", -nWidth).css("left", -nWidth + (pos.x2 - pos.x1)); 
        }*/
        break;
    case "up":
        if (index == (len - 1)) {
			index=-1;
        }
        $(".page_item").eq(index + 1).addClass("active").css("top", nHeight).css("top", nHeight + (pos.y2 - pos.y1));
        break;
    case "down":
        if (index == 0) {
			index=len;
        }
        $(".page_item").eq(index - 1).addClass("active").css("top", -nHeight).css("top", -nHeight - (pos.y1 - pos.y2));
        break;
    default:
        break
    }
}

function page_touchend(a) {
    if (!mousedown) {
        return false;
    }
    if (a.type == "touchend") {
        pos.x2 = window.event.changedTouches[0].pageX;
        pos.y2 = window.event.changedTouches[0].pageY;
    } else {
        pos.x2 = a.pageX;
        pos.y2 = a.pageY;
    }
    direct = swipeDirection(pos.x1, pos.x2, pos.y1, pos.y2);
    switch (direct) {
    case "left":
		/*if ($(".page_item.show").find(".first").length) {
            $(".first_item").eq(horizontal_1 + 1).animate({
                left: 0
            }, 150, function () {
                $(".first_item").eq(horizontal_1).removeClass("show active").addClass("hide");
                $(".first_item").eq(horizontal_1 + 1).removeClass("active hide").addClass("show"); 
                horizontal_1++; 
            })
        }*/
        if ($(".page_item.show").find(".second").length) {
            $(".second_item").eq(horizontal_2 + 1).animate({
                left: 0
            }, 150, function () {
                $(".second_item").eq(horizontal_2).removeClass("show active").addClass("hide");
                $(".second_item").eq(horizontal_2 + 1).removeClass("active hide").addClass("show"); 
                horizontal_2++; 
				horizontal_2 == 0?$(".back").hide():$(".back").show(); 
            })
        }
        /*if ($(".page_item.show").find(".third").length) {
            $(".third_item").eq(horizontal_3 + 1).animate({
                left: 0
            }, 150, function () {
                $(".third_item").eq(horizontal_3).removeClass("show active").addClass("hide");
                $(".third_item").eq(horizontal_3 + 1).removeClass("active hide").addClass("show"); 
                horizontal_3++; 
            })
        }*/
        mousedown = null;
        break;
    case "right":
        /*if ($(".page_item.show").find(".first").length) {
       		 if (horizontal_1 == 0) {
           		break;
       		 }
            $(".first_item").eq(horizontal_1 - 1).animate({
                left: 0
            }, 150, function () {
                $(".first_item").eq(horizontal_1).removeClass("show active").addClass("hide");
                $(".first_item").eq(horizontal_1 - 1).removeClass("active hide").addClass("show"); 
                horizontal_1--; 
            })
        }*/
		if ($(".page_item.show").find(".second").length) {
       		 if (horizontal_2 == 0) { 
           		break;
       		 }
            $(".second_item").eq(horizontal_2 - 1).animate({
                left: 0
            }, 150, function () {
                $(".second_item").eq(horizontal_2).removeClass("show active").addClass("hide");
                $(".second_item").eq(horizontal_2 - 1).removeClass("active hide").addClass("show"); 
                horizontal_2--; 				 
				horizontal_2 == 0?$(".back").hide():$(".back").show(); 
            })
        }
		/*if ($(".page_item.show").find(".third").length) {
       		 if (horizontal_3 == 0) {
           		break;
       		 }
            $(".third_item").eq(horizontal_3 - 1).animate({
                left: 0
            }, 150, function () {
                $(".third_item").eq(horizontal_3).removeClass("show active").addClass("hide");
                $(".third_item").eq(horizontal_3 - 1).removeClass("active hide").addClass("show"); 
                horizontal_3--; 
            })
        }*/
        mousedown = null;
        break;
    case "up":
        if (index == (len - 1)) {
		  index=-1;
        }
        if ((pos.y1 - pos.y2) >= 50) {
            $(".page_item").eq(index + 1).animate({
                top: 0
            }, 300, function () {
                $(".page_item").eq(index).removeClass("show active").addClass("hide");
                $(".page_item").eq(index + 1).removeClass("active hide").addClass("show");
                index++; 
            })
        } else {
            $(".page_item").eq(index + 1).animate({
                top: nHeight
            }, 100);
        }
        mousedown = null;
        break;
    case "down":
        if (index == 0) {
		   index=len ;
        }
        if ((pos.y2 - pos.y1) >= 50) {
            $(".page_item").eq(index - 1).animate({
                top: 0
            }, 300, function () {
                $(".page_item").eq(index).removeClass("show active").addClass("hide");
                $(".page_item").eq(index - 1).removeClass("active hide").addClass("show");
                index--; 
            })
        } else {
            $(".page_item").eq(index - 1).animate({
                top: -nHeight
            }, 100);
        }
        mousedown = null;
        break;
    default:
        mousedown = null;
        break;
    }
}

$(".back").click(function(){
    $(".story-img").removeClass("show active").addClass("hide");
    $(".second").removeClass("hide");
    $(".back").hide();
    horizontal_2 = 0;
});