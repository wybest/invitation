// JavaScript Document

<!---倒计时---->
	var __all;
	function _fresh(t)
    {
        var endtime=new Date(t);//结婚时间（倒计时）
        var nowtime = new Date();
        var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
        if(leftsecond<0){leftsecond=0;}
        var day1=getDoubleDigitNumber(Math.floor(leftsecond/(60*60*24)));
        var hour=getDoubleDigitNumber(Math.floor((leftsecond-day1*24*60*60)/3600));
        var minute=getDoubleDigitNumber(Math.floor((leftsecond-day1*24*60*60-hour*3600)/60));
        var second=getDoubleDigitNumber(Math.floor(leftsecond-day1*24*60*60-hour*3600-minute*60));

        __all = day1+":"+hour+":"+minute+":"+second;
		$(function(){
        $('#counter').countdown({
          startTime:__all
        });
    }); 
    }
	function getDoubleDigitNumber(num)
	{
		///返回双位数			
		return (num<10)?('0'+num):num.toString();				
	}
    
<!---END 倒计时---->

var isPc = /(WindowsNT)|(Windows NT)|(Macintosh)/i.test(navigator.userAgent);
var nHeight = !isPc ? $(window).height() : 480,
	nWidth = $(window).width(); 
$('.mod-footer').find('.btn-close').click(function(){
    $('.mod-footer').removeClass('mod-footer-show');
	document.getElementById('tishi').innerHTML='点此处看倒计时';
});
$('.mod-footer').find('.daojishi').click(function(){
    $('.mod-footer').removeClass('mod-footer-show');
	document.getElementById('tishi').innerHTML='点此处看倒计时';
});
$('.mod-footer').find('.btn-guanzhu').click(function(){
    $('.mod-footer').removeClass('mod-footer-show');
	document.getElementById('tishi').innerHTML='点此处看倒计时';
});
$('.mod-footer').find('.btn-show').click(function(){
    $('.mod-footer').addClass('mod-footer-show');
	document.getElementById('tishi').innerHTML='';
});
$('.mod-footer').find('.logo-show').click(function(){
	document.getElementById('tishi').innerHTML='';
    $('.mod-footer').addClass('mod-footer-show');
});  