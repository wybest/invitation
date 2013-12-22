<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/xhtml-mobile12.dtd">
<!-- saved from url=(0067) -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="HandheldFriendly" content="true">
<meta name="MobileOptimized" content="width">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=2.0, user-scalable=no">
<meta property="og:url" content="">
<meta property="og:type" content="website">
<meta property="fb:app_id" content="113568098684585">
<meta property="fb:admins" content="632874169,100001046633303">
<script src="./invit_files/jquery-latest.js"></script>
<script type="text/javascript" src="./invit_files/jquery-ui-1.8.18.full.min.js"></script>


<link class="a" href="/invitation/style/{#if $mould #}{#$mould#}{#else#}桃色经典{#/if#}/image_files/custom.css" type="text/css" rel="stylesheet">
<link class="b" href="/invitation/style/{#if $mould #}{#$mould#}{#else#}桃色经典{#/if#}/image_files/style.css" type="text/css" rel="stylesheet">

<link class="fontcss" href="/invitation/style/{#if $mould #}{#$mould#}{#else#}桃色经典{#/if#}/image_files/getcss" type="text/css" rel="stylesheet">

<link href="./invit_files/styles_leo.css" type="text/css" rel="stylesheet">
<link href="./invit_files/photoswipe.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="./invit_files/klass.min.js"></script>
<script type="text/javascript" src="./invit_files/code.photoswipe.jquery-3.0.5.min.js"></script>



<script src="./invit_files/api" type="text/javascript"></script><script type="text/javascript" src="./invit_files/getscript"></script><link rel="stylesheet" type="text/css" href="./invit_files/bmap.css">

<script type="text/javascript">

var invite_styletype = 1;

function processButtonBackground(){

    if (invite_styletype==1){
        $("h3:visible>.button").each(function(index) {
            $(this).attr('id', 'button' + (index + 1) )
        });
    }
}

function initProcessButtonBackground(){

    if (invite_styletype==1){
        $("h3:visible>.button").each(function(index) {
            $(this).attr('id', 'button' + (index + 1) )
        });
    } else {
        $("h3>.button").each(function(index) {
            $(this).attr('id', $(this).attr('name') )
        });
    }


}





var dragFlag7044 = false;
var start7044 = 0, end7044 = 0;

function thisTouchStart7044(e)
{
    dragFlag7044 = true;
    start7044 = e.touches[0].pageY;
}

function thisTouchEnd7044()
{
    dragFlag7044 = false;
}

function thisTouchMove7044(e)
{
    if ( !dragFlag7044 ) return;
    end7044 = e.touches[0].pageY;
    window.scrollBy( 0,( start7044 - end7044 ) );
}





var map7044 = null;
var marker7044;
var map7044_latcenter = 31.240629;
var map7044_lngcenter = 121.512625;
var map7044_latmarker = 31.241401;
var map7044_lngmarker = 121.512876;

function initialize7044() {
    map_canvas7044
    //Baidu MAP Control
    map7044 = new BMap.Map("map_canvas7044");

    map7044.centerAndZoom(new BMap.Point({#if $coordinate #}{#$coordinate#}{#else#}116.404, 39.915{#/if#}),  15);                 // 初始化地?，?置中心?坐?和地???

    var opts = {type: BMAP_NAVIGATION_CONTROL_ZOOM}
            map7044.addControl(new BMap.NavigationControl(opts));



    var myIcon = new BMap.Icon("style/{#if $mould #}{#$mould#}{#else#}桃色经典{#/if#}/image_files/markers.gif", new BMap.Size(25,21));
    // ?建?注?象并添加到地?

    marker7044 = new BMap.Marker(new BMap.Point({#if $coordinate #}{#$coordinate#}{#else#}116.404, 39.915{#/if#}), {icon: myIcon}); // ?建?注
    map7044.addOverlay(marker7044);





}

//baidu map

function setMapCenter7044(lng, lat) {
    map7044.setCenter(new BMap.Point(lng,lat));

}

function setMapZoom7044(zoom) {
    map7044.setZoom(zoom);

}

function setMarkerPos7044(lng,lat) {
    //alert(pnt);
    marker7044.setPosition(new BMap.Point(lng,lat)) ;

}





var bReloadWebFontOnce = 1;

$(document).ready(function() {
    $("#accordion").accordion({ autoHeight: false },{ collapsible: true,active: false } );
    //$("#accordion").accordion("activate",0);
    //$("#accordion").accordion("activate","#accordion10");

    $("#accordion").bind('accordionchange', function(event, ui) {
        //   ui.newHeader // jQuery object, activated header
        //   ui.oldHeader // jQuery object, previous header
        //   ui.newContent // jQuery object, activated content
        //   ui.oldContent // jQuery object, previous content
        //console.log(ui);
        // console.log($("#accordion").accordion( "option", "active" ));
        if ($(ui.newHeader).offset() != null){
            $('html, body').animate({scrollTop: $(ui.newHeader).offset().top} );
        }

    });

    $("#accordion").bind('accordionchangestart', function(event, ui) {
        if (ui.newContent.attr('id') == 'invite_detail_content7042' && bReloadWebFontOnce==1  )
        {
            //alert("reloadwebfont");
            //$("#invite_detail_editor7042").hide();
            reloadWebFont();
            bReloadWebFontOnce = 0;
            //$("#invite_detail_editor7042").show();
        }
    });


    $("#accordion").bind('accordionchange', function(event, ui) {
        // ui.newHeader // jQuery object, activated header
        // ui.oldHeader // jQuery object, previous header
        // ui.newContent // jQuery object, activated content
        // ui.oldContent // jQuery object, previous content
        //  alert($(ui.newContent).attr("id") + " was opened, " + $(ui.oldContent).attr("id") + " was closed");
        //   console.log(ui.newHeader.attr('id'));
        if (ui.newContent.attr('id') == 'invite_detail_content7044' && !map7044 && $("#invite_detail_mapimgurl7044").val() == '' )
        {
            //alert("initialize7044");
            initialize7044();
        }


    });

    var mapCanvas = document.getElementById("map_canvas7044");

    if (!mapCanvas.addEventListener) {
        mapCanvas.attachEvent("touchstart", thisTouchStart7044, true);
        mapCanvas.attachEvent("touchend", thisTouchEnd7044, true);
        mapCanvas.attachEvent("touchmove", thisTouchMove7044, true);
    } else {
        mapCanvas.addEventListener("touchstart", thisTouchStart7044, true);
        mapCanvas.addEventListener("touchend", thisTouchEnd7044, true);
        mapCanvas.addEventListener("touchmove", thisTouchMove7044, true);
    }


    $("#accordion").bind('accordionchange', function(event, ui) {
        accordion_active_index = $("#accordion").accordion('option', 'active');


        //not work --> tabs_selected_index = $("#tabs",parent.document.body).tabs( "option", "selected" );
        tabs_selected_index =self.parent.$("#tabs").tabs( "option", "selected" );
        //console.log("accordion_active_index=" + accordion_active_index + ",tabs_selected_index=" + tabs_selected_index);

        if (accordion_active_index != tabs_selected_index) {
            //not work --> $("#tabs",parent.document.body).tabs( "select" , accordion_active_index );
            if ( !(accordion_active_index === false))
                self.parent.$("#tabs").tabs( "select" , accordion_active_index );

        }

    });




});



var bPlayVideo=1;

function clickObj(o){
//    alert('clicked');
//	bPlayVideo=0;
    var o = document.getElementById(o);

    if( document.all){
        o.click();
        //o.fireEvent("onclick");

    }else{

        var e = document.createEvent('MouseEvent');
        e.initEvent('click', false, false);
        o.dispatchEvent(e);
    }

}


</script>

<script language="javascript">
    <!--

    function init(){


    }

    function isIns(){

        var btn='';

        if (document.iform.sum.value == '0'){

            btn = ' 送 出 ';

        }else{

            btn = ' 修 改 ';

        }


        if( ! confirm('您确定要' + btn + '出席回函？')){

            return false;

        }else{

            document.iform.submit();

        }

    }

    function replaceAll(oldStr,findStr,repStr) {

        var srchNdx = 0;

        var newStr = "";
        while (oldStr.indexOf(findStr,srchNdx) != -1)
        {
            newStr += oldStr.substring(srchNdx,oldStr.indexOf(findStr,srchNdx));
            newStr += repStr;
            srchNdx = (oldStr.indexOf(findStr,srchNdx) + findStr.length);
        }
        newStr += oldStr.substring(srchNdx,oldStr.length);

        return newStr;
    }

    /*
     function getGlobalMobile(no) {
     start = String(no.slice(0,1));
     if (start == "+" ) {
     return String(no.slice(1,no.length))
     } else {
     if (start == "0") {
     return  "86" + String(no.slice(1,no.length))
     } else {
     return "86" + no
     }
     }
     }
     */

    function getGlobalMobile(no) {
        var tmp_no, inter_no;
        var preset_cc = '86';
        start = String(no.slice(0,1));
        if (start == "+" ) {
            tmp_no = String(no.slice(1,no.length)); //remove leading +
            if ( String(tmp_no.slice(0,preset_cc.length)) == preset_cc && String(tmp_no.slice(preset_cc.length,preset_cc.length+1)) == '0' ) {
                inter_no = preset_cc + String(tmp_no.slice(preset_cc.length + 1, tmp_no.length));
            } else {
                inter_no = tmp_no;
            }
        } else {
            if (start == "0") {
                inter_no = preset_cc + String(no.slice(1,no.length))
            } else {
                if ( String(no.slice(0,preset_cc.length)) == preset_cc ) {
                    if ( String(no.slice(preset_cc.length,preset_cc.length+1)) == '0'  ) {
                        inter_no = preset_cc + String(no.slice(preset_cc.length + 1, no.length));
                    } else {
                        inter_no =  no;
                    }
                } else {
                    inter_no = preset_cc + no;
                }
            }
        }
        return inter_no;

    }


    function checkMobileNumber( mo ) {



        if (String(mo.slice(0,1)) == "+" ) {
            if( isNaN(mo.slice(1,mo.length))) {
                return false;
            }
            if( mo.length < 5) {
                return false;
            }
        } else {
            if( isNaN(mo)) {
                return false;
            }
            if( mo.length < 6) {
                return false;
            }
        }
        return true
    }

    function isIns2(){


        if( document.rform.remindname.value.length == 0){

            alert('请输入姓名！');
            document.rform.remindname.focus();
            return false;

        }

        if( document.rform.remindphone.value.length == 0){

            alert('请输入手机号！');
            document.rform.remindphone.focus();
            return false;

        }

        /*
         if( document.rform.remindphone.value.length != 10 || document.rform.remindphone.value.substring(0,2) != '09'){

         alert('請輸入正確的手機號碼！');
         document.rform.remindphone.focus();
         return false;

         }

         if( ! confirm('您確定要送出簡訊提醒？')){

         return false;

         }else{

         document.rform.submit();

         }
         */
        mo = replaceAll( document.rform.remindphone.value, '-','');
        mo = replaceAll( mo, ' ','');
        mo = replaceAll( mo, '(','');
        mo = replaceAll( mo, ')','');



        if ( checkMobileNumber(mo) == false ) {
            alert("您的手机号码格式不正确:");
            document.rform.remindphone.focus();
            return false;

        } else {

            //confirm mobile country code

            if (String(mo.slice(0,1)) != "+" ) {
                if(!confirm("系统自动判别以下手机号位于 [China / 中国]\n" + mo + "\n\n如果不是的话, 请在手机号前加上 +国码, \n例如,中国大陆(国码86)的手机号: 13061711111\n请输入: +86 13061711111")) {

                    document.rform.remindphone.focus();
                    return false;
                }
            }
            document.rform.remindphone_data.value = getGlobalMobile(mo)

        }

        document.rform.submit();



    }


    -->
</script>



<script language="javascript">
<!--


function addRow(parent_node, maxid){



    //取得屬於要應用新增列的區塊
    var obj=document.getElementById( parent_node);
    //取得目前有多少欄位
    //var sIndex=obj.getElementsByTagName('div').length+1;
    var sIndex = maxid;

    //依照原表單格式,先建一個div
    var div=document.createElement('div');
    div.id = 's'+sIndex;

    //再建立文字欄位,並指定相關屬性
    var input=document.createElement('input');
    input.type='radio';
    input.name='t'+parent_node.replace('q', '');

    var txt=document.createElement('span');
    txt.id='o'+maxid;
    txt.innerHTML = ' 新增选项';



    div.appendChild(input);
    div.appendChild(txt);

    obj.appendChild(div);


}

function delRow(q, t){

    d = document.getElementById(t);

    d.parentNode.removeChild(d);

}


function setQuestionTitle(qq, txt){

    document.getElementById('qq'+qq).innerHTML = txt;

}



function setOptionTitle(o, txt){

    var range_array, inputstr, qid;
    var leftstr, rightstr, midstr, leftpos, rightpos;
    leftstr = '';
    rightstr = '';
    midstr = '';
    leftpos = parseInt( txt.indexOf('{'));
    rightpos = parseInt( txt.indexOf('}'));

    inputstr = '';

    qid = document.getElementById('o'+o).parentNode.parentNode.id.replace('q','');

    if (leftpos >= 0 && rightpos > 0){

        //是,{1-10}人 {}

        leftstr = txt.substring(0, leftpos);
        rightstr = txt.substring( rightpos+1, txt.length);
        midstr = txt.substring( leftpos+1, rightpos);


        if ( midstr == ''){

            inputstr = '<input type="text" id="n' + qid + '" name="n' + qid + '" value="" size="10" onkeyup="setOptionValue( ' + qid + ', this.value, ' + txt + ')">';



            //}else if ( midstr.indexOf('-') >= 0){
        }else{


            inputstr = '';
            inputstr += '<select id="n' + qid + '" name="n' + qid + '" onchange="setOptionValue( ' + qid + ', this.value, ' + txt + ')">';
            inputstr += '<option value="">请选择</option>';
            option_array = midstr.split('|');
            //alert(option_array.length);
            cc = 1;
            for (i = 0; i<option_array.length; i++){



                range_array = option_array[i].split('-');


                if (range_array.length==2) {
                    for (j = parseInt( range_array[0]); j<= parseInt(range_array[1]); j++) {
                        inputstr += '<option value="' + j + '">' + j + '</option>';
                        cc = cc + 1;
                    }
                } else {
                    inputstr += '<option value="' + option_array[i] + '">' + option_array[i] + '</option>';
                }

                cc = cc + 1;

            }
            inputstr += '</select>';




        }

//alert(leftstr + inputstr + rightstr);
        document.getElementById('o'+o).innerHTML = ' ' + leftstr + inputstr + rightstr;

    }else{

        document.getElementById('o'+o).innerHTML = ' ' + txt;
    }



}

function updateSelect(parent_node, str){



    var s = document.getElementById( parent_node.replace('q', 't'));

    var arr = new Array();
    arr = parent.document.getElementById( parent_node).getElementsByTagName('input');


    s.options.length = 0;

    s.options[0] = new Option('请选择', 0);
    for (var i=0; i<arr.length; i++){

        if (arr[i].value.Trim().length != 0){

            s.options[i+1] = new Option( arr[i].value, arr[i].value);

            if( arr[i].value == str) s.options[i+1].selected = true;

        }
    }

}

function showQuestion(parent_node, check){



    if (check){

        document.getElementById( parent_node.replace('q', 'ta')).style.display = 'block';


    }else{

        document.getElementById( parent_node.replace('q', 'ta')).style.display = 'none';

    }

    var n = 0;

    //console.log($("#rsvptable tr[style*='display: block']"));



    $("#rsvptable tr[style*='block']").each( function(n){
        n++;

        $(this).find("span:eq(0)").html(n);
    });

}


function setOptionValue( id, txt, order){


    var obj, obj2;

    obj = eval('document.iform.q' + id);
    obj.value = txt;

    obj2 = eval('document.iform.t' + id);

    for (var i=0; i<obj2.length; i++){

        if (obj2[i].value == order){

            obj2[i].checked = true;
        }
    }

}


String.prototype.Trim = function() {

    return this.replace(/(^\s*)|(\s*$)/g, "");

}








-->
</script>

<style type="text/css">



    body {
        /*font-family:Georgia, "Times New Roman", Times, serif;*/
        font-family:粗钢笔2,微软雅黑,宋体,Microsoft JhengHei,Microsoft YaHei,arial;
        margin-left: 4px;
        margin-top: 4px;
        margin-right: 4px;
        font-size:90%;
    }

    .ui-widget{
        /*font-family:Georgia, "Times New Roman", Times, serif;*/
        font-family:粗钢笔2,微软雅黑,宋体,Microsoft JhengHei,Microsoft YaHei,arial;
    }

    .play_video_button{
        border: solid 1px #CCC; /* 邊框樣式 */
        -moz-box-shadow: 1px 1px 5px #999; /* Firefox */
        -webkit-box-shadow: 1px 1px 5px #999; /* Safari 和 Chrome */
        box-shadow: 1px 1px 5px #999; /* Opera 10.5 + */
    }

    /*
    .header_style {
        -webkit-box-shadow: rgba(0,0,0,.3) 1px 1px 2px;
        margin-bottom: 8px;
    }
    */

    /*no use now */
    .title {
        -webkit-border-radius: 6px;
        -moz-border-radius: 6px;
        -webkit-box-shadow: rgba(0,0,0,.3) 1px 1px 2px;
        border: 0px solid #E0E0E0;
        background-color: #ff87c3; /* Changes the homepage menu background color */
        text-align: center;
        padding: 3px 0 3px 0;
        margin-bottom: 5px;
        font-size: 120%; color:#999;



        background: #ff87c3; /* Old browsers */
        background: -moz-linear-gradient(top,  #fcecfc 0%, #fba6e1 50%, #fd89d7 51%, #ff87c3 100%); /* FF3.6+ */
        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#fcecfc), color-stop(50%,#fba6e1), color-stop(51%,#fd89d7), color-stop(100%,#ff87c3)); /* Chrome,Safari4+ */
        background: -webkit-linear-gradient(top,  #fcecfc 0%,#fba6e1 50%,#fd89d7 51%,#ff87c3 100%); /* Chrome10+,Safari5.1+ */
        background: -o-linear-gradient(top,  #fcecfc 0%,#fba6e1 50%,#fd89d7 51%,#ff87c3 100%); /* Opera 11.10+ */
        background: -ms-linear-gradient(top,  #fcecfc 0%,#fba6e1 50%,#fd89d7 51%,#ff87c3 100%); /* IE10+ */
        background: linear-gradient(top,  #fcecfc 0%,#fba6e1 50%,#fd89d7 51%,#ff87c3 100%); /* W3C */
        filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fcecfc', endColorstr='#ff87c3',GradientType=0 );  /*IE6-9 */



    }

    /*jquery UI css overwrite*/
    .ui-accordion-content {
        /*
            filter: alpha(opacity=10);
            opacity:0.4;
        */
        /*	background-image:url(images/index_bg_02.jpg);
            background-repeat: repeat;
            background-position: center center;
        */
        font-family: "微軟正黑體", "微软雅黑", "宋体", "Microsoft JhengHei", "Microsoft YaHei", verdana, tahoma, arial, serif;
    }



</style>








<script>(function listenerTest() {
        window.addEventListener("message", function (event) {
            if (event.source !=  window) return;

            if (event.data.type && (event.data.type == "GET_VAR")) {
                var var_name = event.data.name, name, val = null;
                for (var i = 0, l = var_name.length; i < l; i++) {
                    if (window[var_name[i]] != null) {
                        val = window[var_name[i]];
                        name = var_name[i];
                        break;
                    }
                }

                if (var_name[0] == "_SPM_a" || var_name[0] == "_SPM_b") {
                    name = var_name[0];
                }
                //val = var_name ? window[var_name] : null;
                console.log(var_name, val);
                window.postMessage({
                    type: "SEND_VAR",
                    name: name,
                    value: val
                }, "*");
            }
        });
    })();</script></head>
<body>

<!-- <div class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" > -->

<div id="MainContent">

<div id="outter">
    <div class="outter-main-tr"><div class="outter-main-tl"><div class="outter-main-tm"></div></div></div>
    <div class="outter-main-mr"><div class="outter-main-ml">

            <div class="ui-widget-header ui-corner-all">
                <div id="inner">
                    <div class="inner-main-tr"><div class="inner-main-tl"><div class="inner-main-tm">
                                <div id="main-title">
                                    <div class="main-title-tr"><div class="main-title-tl"><div class="main-title-tm">
                                            </div></div></div>
                                    <div class="main-title-mr"><div class="main-title-ml">

                                            <div class="main-title-mm">
                                                <div id="maintitlehtml"><span style="text-decoration: none; font-style: normal; font-size: 20px; font-weight: normal; ">{#if $bigtitle #}{#$bigtitle#}{#else#}美男与美女婚宴邀约{#/if#}</span></div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="main-title-br"><div class="main-title-bl"><div class="main-title-bm">
                                            </div></div></div>
                                </div>
                            </div></div></div>
                    <div class="inner-main-mr">
                        <div id="img_decoration1" style="cursor: default;"></div>
                        <div id="img_decoration2" style="cursor: default;"></div>
                        <div class="inner-main-ml">
                            <div class="inner-main-mm">
                                <!-- 大圖 -->
                                <img id="invite_webimg" src="{#if $bigimage #}marryimg/{#$bigimage #}{#else#}marryimg/2013-12-15-12-15-31.jpg{#/if#}" width="100%" alt="Mobile Wedding Invitations" style="cursor: default;">
                                <div id="img_videobutton_placeholder" style="position:relative;display:none;">
                                    <div id="img_videobutton" style="display:none;"></div>
                                </div>


                                <script>

                                    var startX, startY

                                    // detect if touch event supported or not
                                    if ('ontouchstart' in document.documentElement) {
                                        document.getElementById("invite_webimg").addEventListener("touchmove", handleMove, false);
                                        document.getElementById("invite_webimg").addEventListener("touchend", handleEnd, false);
                                        document.getElementById("invite_webimg").addEventListener("touchstart", handleStart, false);
                                    }

                                    function handleStart(event){
                                        //event.preventDefault();
                                        var touch = event.touches[0];
                                        startX = parseInt( touch.pageX);
                                        startY = parseInt( touch.pageY);

                                        //alert(startX + ' ' + startY);
                                    }

                                    function handleEnd(event){



                                    }

                                    function handleMove(event){

                                        //event.preventDefault();
                                        var x, y;


                                        var touch = event.touches[0];
                                        x = parseInt( touch.pageX) - startX;
                                        y = parseInt( touch.pageY) - startY;

                                        if ($("#Gallery li").size() > 0){

                                            if ((Math.abs(x) > Math.abs(y)) && (Math.abs(x) > 150) ){

                                                instance.show(0);
                                            }
                                        }

                                    }

                                    // default mv parameter
                                    var invite_mediatype = 0;
                                    var invite_preview_objurl;
                                    var invite_preview_usrdata;



                                    /*
                                     $(document).ready(function() {
                                     //init
                                     if (invite_mediatype == 1) {
                                     $( "#img_videobutton").show();
                                     $( "#img_videobutton_placeholder").show();
                                     } else {
                                     $( "#img_videobutton").hide();
                                     $( "#img_videobutton_placeholder").hide();
                                     }

                                     });
                                     */
                                    $(function() {
                                        //if (invite_mediatype == 1) {
                                        //	$( "#img_decoration1,#img_decoration2,#img_decoration3").css('cursor', 'pointer');
                                        //} else {
                                        //	$( "#img_decoration1,#img_decoration2,#img_decoration3").css('cursor', 'default');
                                        //}



                                        $( "#img_videobutton" ).click(function() {
                                            //alert("playVideo");
                                            if (invite_mediatype == 1) {

                                                self.parent.switchSrc_variable4(invite_preview_objurl,  invite_preview_usrdata);

                                            }


                                            return false;
                                        });



                                        if ($("#Gallery li").size() > 0){

                                            $( "#invite_webimg,#img_decoration1,#img_decoration2,#img_decoration3").css('cursor', 'pointer');
                                        }else{
                                            $( "#invite_webimg,#img_decoration1,#img_decoration2,#img_decoration3").css('cursor', 'default');
                                        }

                                        $( "#invite_webimg,#img_decoration1,#img_decoration2,#img_decoration3" ).click(function() {


                                            if ($("#Gallery li").size() > 0){

                                                //alert($("#Gallery a:first").html());
                                                //$("#Gallery a:first").click();
                                                instance.show(0);
                                            }


                                            return false;
                                        });




                                    });

                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="inner-main-br">
                        <div id="img_decoration3" style="cursor: default;"></div>
                        <div class="inner-main-bl"><div class="inner-main-bm">

                                <div id="sub-title">
                                    <div class="sub-title-tr"><div class="sub-title-tl"><div class="sub-title-tm">
                                            </div></div></div>
                                    <div class="sub-title-mr"><div class="sub-title-ml">

                                            <div class="sub-title-mm">
                                                <div id="subtitlehtml" style="text-align:center; margin-top:3px; margin-bottom:3px; "><span id="show_time1" style="font-weight: normal; font-size: 18px; ">{#if $show_time #}{#$show_time#}{#else#}2014年9月9日{#/if#}</span></div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="sub-title-br"><div class="sub-title-bl"><div class="sub-title-bm">
                                            </div></div></div>
                                </div>


                            </div></div></div>
                </div>

            </div>

        </div></div>
    <div class="outter-main-br"><div class="outter-main-bl"><div class="outter-main-bm"></div></div></div>
</div>

<!-- preload placeholder for custom.css assets-->
<div id="preload-01"></div>
<div id="preload-02"></div>
<div id="preload-03"></div>
<div id="preload-04"></div>
<div id="preload-05"></div>
<div id="preload-06"></div>
<div id="preload-07"></div>
<div id="preload-08"></div>
<div id="preload-09"></div>
<div id="preload-10"></div>
<div id="preload-11"></div>
<div id="preload-12"></div>
<div id="preload-13"></div>
<div id="preload-14"></div>
<div id="preload-15"></div>
<div id="preload-16"></div>
<div id="preload-17"></div>
<div id="preload-18"></div>
<div id="preload-19"></div>
<div id="preload-20"></div>


<div id="accordion" class="ui-accordion ui-widget ui-helper-reset ui-accordion-icons" role="tablist">




<h3 style="display:" id="invite_detail_title7042" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>

    <div name="button1" id="button1" class="button">
        <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
        <div class="button-mr">
            <div class="button-ml">
                <div class="button-mm">
                    <a href="#"><img class="iconimage" alt="1.png" src="style/{#$mould #}/image_files/1.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7042">{#if $title1#}{#$title1#}{#else#}爱的邀约{#/if#}</span></a>
                </div>
            </div>
        </div>
        <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
    </div>
</h3>

<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7042" role="tabpanel" style="display: none;">
    <div id="detail7042" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
            <div class="detail-ml">
                <div class="detail-mm">


                    <div class="invite_detail_editor" id="invite_detail_editor7042">

                        <div class="invitext">
                            <p class="ip2"><img src="style/{#$mould #}/image_files/16052978.png" width="80%" height="30" alt=""> </p>
                            <p class="ip3"><span id="show_time2">{#if $show_time #}{#$show_time#}{#else#}2014年9月9日{#/if#}</span></p>
                            <p class="ip4">贵宾名字</p>
                            <p class="ip3">{#if $special_name #}<span>{#$special_name#}</span>{#else#}新郎：<span id="man">{#$man#}</span> 新娘：<span id="women">{#$women#}</span> {#/if#}</p>
                            <p class="ip4">{#if $extends eq "none" #} {#elseif $extends #}{#$extends#}{#else#}举行结婚典礼 敬备喜宴 {#/if#}</p>
                            <p class="ip6">时间：<span id="mini_time">{#if $mini_time #}{#$mini_time#}{#else#}5:30入席{#/if#}</span></p>
                            <p class="ip6">地点：<span id="house">{#$house#}</span></p><br />
                        </div>

                    </div>
                    <script type="text/javascript">

                        //?建求XMLHttpRequest?象
                        function createRequest() {
                            try {
                                request = new XMLHttpRequest();
                            } catch (trymicrosoft) {
                                try {
                                    request = new ActiveXObject("Msxml2.XMLHTTP");
                                } catch (othermicrosoft) {
                                    try {
                                        request = new ActiveXObject("Microsoft.XMLHTTP");
                                    } catch (failed) {
                                        request = false;
                                    }
                                }
                            }
                            if (!request)
                                alert("ERROR XMLHttpRequest!");
                        }



                        function reloadWebFont(){
                            var webfontinfo_array = ['粗钢笔|粗钢笔1|http://tw.youvivid.com:8080/Fonts/csslink?family=%E7%B2%97%E9%92%A2%E7%AC%941&font=%E7%B2%97%E9%92%A2%E7%AC%94|2','黑体|黑体1|http://tw.youvivid.com:8080/Fonts/csslink?family=%E9%BB%91%E4%BD%931&font=%E9%BB%91%E4%BD%93|2','粗行楷体|粗行楷体1|http://tw.youvivid.com:8080/Fonts/csslink?family=%E7%B2%97%E8%A1%8C%E6%A5%B7%E4%BD%931&font=%E7%B2%97%E8%A1%8C%E6%A5%B7%E4%BD%93|2','甜妞体|甜妞体1|http://tw.youvivid.com:8080/Fonts/csslink?family=%E7%94%9C%E5%A6%9E%E4%BD%931&font=%E7%94%9C%E5%A6%9E%E4%BD%93|2'];
                            var htmltext = $("#invite_detail_editor7042").html();
                            plaintext = htmltext.replace( /(<[^<|>]+?>|\r\n|\n|\r|^\s*|\s*$|\s+|&nbsp;)/gim,'' );

                            plaintext_array_inorder = plaintext.split('').sort();

                            if (plaintext_array_inorder.length > 0) {
                                plaintext_min = plaintext_array_inorder[0];
                                prechr = plaintext_array_inorder[0];
                                for (i=1; i<plaintext_array_inorder.length; i++){
                                    if (plaintext_array_inorder[i] != prechr){
                                        prechr = plaintext_array_inorder[i];
                                        plaintext_min = plaintext_min + plaintext_array_inorder[i];
                                    }
                                }
                            } else {
                                plaintext_min = "";
                            }


                            contentcss_list = "";
                            //alert(webfontinfo_array);

                            for ( cc=0; cc < webfontinfo_array.length ; cc++) {

                                tmp_webfontname = webfontinfo_array[cc].split('|')[0];
                                //	alert(tmp_webfontname);
                                tmp_webfont = webfontinfo_array[cc].split('|')[1];
                                tmp_webfonturl = webfontinfo_array[cc].split('|')[2];
                                tmp_webfonttype = webfontinfo_array[cc].split('|')[3];

                                if (  htmltext.toUpperCase().indexOf(tmp_webfont.toUpperCase()) >= 0 ) {
                                    var_text = plaintext_min;
                                    if (tmp_webfonttype==1 ) {
                                        $(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="'+ tmp_webfonturl + "&text=" + encodeURIComponent(var_text) +'">');
                                    } else if (tmp_webfonttype==3 ) { //google webfont pure english,  no text parameter
                                        $(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="'+ tmp_webfonturl +'">');
                                    }else{
                                        post_url = tmp_webfonturl.split('?')[0];
                                        post_vars = tmp_webfonturl.split('?')[1] + "&text=" + encodeURIComponent(var_text);
                                        createRequest();
                                        //post_url = "http://cn.youvivid.com/test_test.asp";

                                        if($.browser.msie && parseInt($.browser.version, 10) <= 7) {
                                            post_url = "http://cn.youvivid.com/mobile_invite_getcontentcssurl.asp";
                                        } else {
                                            serverUrl = 'http://cn.youvivid.com/';
                                            post_url = "http://" + serverUrl.split(/\/+/g)[1] + ":8080/Fonts/csslink";
                                        }
                                        //alert(post_url);
                                        request.open("POST", post_url, false);

                                        request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                                        //alert(post_url+"," + post_vars);
                                        request.send(post_vars);
                                        post_response = request.responseText; //?取服?器返回的JSON字串

                                        //	alert("post_response=" + post_response);
                                        // this is for testing
                                        //$(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="'+ tmp_webfonturl + "&text=" + encodeURIComponent(var_text) +'">');
                                        $(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="'+ post_response +'">');

                                    }
                                }else{
                                    var_text = tmp_webfontname ;
                                    if (tmp_webfonttype==1 ) {
                                        $(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="'+ tmp_webfonturl + "&text=" + encodeURIComponent(var_text) +'">');



                                    }else if (tmp_webfonttype==3 ) { // google webfont load first
                                        $(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="'+ tmp_webfonturl + '">');



                                    }else{
                                        $(document).find('head').append('<link class="fontcss_detail" id="' + tmp_webfont + '" rel="stylesheet" type="text/css" href="">');

                                    }
                                }//if (  htmltext.toUpperCase().indexOf(tmp_webfont.toUpperCase()) >= 0 ) {
                            }
                        } //end	function reloadWebFont(){



                        $(document).ready(function() {

                            //reloadWebFont();


                        });



                    </script>



                </div>

            </div>
        </div>
    </div>
    <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
</div>





<h3 style="display:" id="invite_detail_title7041" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>

    <div name="button7" id="button2" class="button">
        <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
        <div class="button-mr">
            <div class="button-ml">
                <div class="button-mm">
                    <a href="#"><img class="iconimage" alt="7.png" src="style/{#$mould #}/image_files/2.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7041">{#if $title2#}{#$title2#}{#else#}婚纱相册{#/if#}</span></a>
                </div>
            </div>
        </div>
        <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
    </div>
</h3>

<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7041" role="tabpanel" style="display: none;">
<div id="detail7041" class="detail">
<div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
<div class="detail-mr">
    <div class="detail-ml">
        <div class="detail-mm">


            <ul id="Gallery" class="gallery">
                {#section name=customer loop=$images #}
                <li><a href="marryimg/{#$images[customer]#}" rel="external"><img src="marryimg/{#$images[customer]#}" alt=" "/></a></li>
                {#/section#}
            </ul>



            <div style="width:100%; height:3px"></div>

            <div id="PS" style=" overflow: hidden; position: relative;"></div>


        </div>

    </div>
</div>
</div>
<div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
</div>





<h3 style="display:" id="invite_detail_title7043" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-e"></span>

    <div name="button3" id="button3" class="button">
        <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
        <div class="button-mr">
            <div class="button-ml">
                <div class="button-mm">
                    <a href="#"><img class="iconimage" alt="3.png" src="style/{#$mould #}/image_files/3.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7043">{#if $title3#}{#$title3#}{#else#}婚宴回函{#/if#}</span></a>
                </div>
            </div>
        </div>
        <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
    </div>
</h3>

<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7043" role="tabpanel" style="display: none;">
    <div id="detail7043" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
            <div class="detail-ml">
                <div class="detail-mm">

                    <div class="content-wrapper">
                        <div class="content">
                            <div class="inner-header">
                                <div class="fl-left">
                                    <h1>
                                        宾客回函
                                    </h1>
                                </div>
                            </div>
                            <div class="cbox">

                                <div>
                                    <input id="guest" type="text" name="guest" placeholder="姓名" class="textbox">
                                    <br>
                                    <br>
                                    你是否参加:
                                    <select id="pnum" name="pnum">
                                        <option value="非常乐意，有1人参加">非常乐意，有1人参加</option>
                                        <option value="非常乐意，有2人参加">非常乐意，有2人参加</option>
                                        <option value="非常乐意，有3人参加">非常乐意，有3人参加</option>
                                        <option value="非常乐意，有4人参加">非常乐意，有4人参加</option>
                                        <option value="非常乐意，有5人参加">非常乐意，有5人参加</option>
                                        <option value="非常乐意，有6人参加">非常乐意，有6人参加</option>
                                        <option value="非常乐意，有7人参加">非常乐意，有7人参加</option>
                                        <option value="非常乐意，有8人参加">非常乐意，有8人参加</option>
                                        <option value="非常乐意，有9人参加">非常乐意，有9人参加</option>
                                        <option value="抱歉，无法参加">抱歉，无法参加</option>
                                    </select>
                                    <br>
                                    <br>
                                    <textarea name="message" id="message" placeholder="请输入您的祝福信息" required="" data-minlength="10"></textarea>
                                </div>
                                <div class="clear">
                                </div>
                                <p id="submit-button">
                                    <input type="button" id="send_message" value="发送祝福" onClick="javascript:return Check();">
                                </p>
                                <p id="submit-button" style="padding: 0px;">
                                    <span id="bi_msg"></span>
                                </p>

                            </div>

                        </div>
                    </div>

                    {#section name=customer loop=$shuju_array #}
                    <div class="huihan_list">
                        <div class="huihan_top">
                            <div class="huihan_name">{#$shuju_array[customer]->name#}:{#$shuju_array[customer]->pnum#}</div>
                            <div class="huihan_time">{#$shuju_array[customer]->time#}</div>
                        </div>
                        <div class="huihan_text">{#$shuju_array[customer]->bless#}</div>
                    </div>
                    {#/section#}

                </div>

            </div>
        </div>
    </div>
    <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
</div>





<h3 style="display:" id="invite_detail_title7044" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>

    <div name="button4" id="button4" class="button">
        <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
        <div class="button-mr">
            <div class="button-ml">
                <div class="button-mm">
                    <a href="#"><img class="iconimage" alt="4.png" src="style/{#$mould #}/image_files/4.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7044">{#if $title4#}{#$title4#}{#else#}婚宴地图{#/if#}</span></a>
                </div>
            </div>
        </div>
        <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
    </div>
</h3>

<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7044" role="tabpanel" style="display: none;">
    <div id="detail7044" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
            <div class="detail-ml">
                <div class="detail-mm">


                    <input type="hidden" name="invite_detail_mapimgurl7044" id="invite_detail_mapimgurl7044" value="">

                    <img id="invite_detail_mapimg7044" style="width: 100%; border: thin solid rgb(153, 153, 153); display: none;" src="" width="100%">

                    <div id="map_canvas7044" style="border:thin; border-style:solid; border-color:#999; margin-bottom:5px; width:100%; height:300px;"></div>


                    <div id="map_desc7044">地址：{#$adress#}</div>

                    <script language="javascript">
                        $(document).ready(function() {
                            //init
                            if ($("#invite_detail_mapimgurl7044").val() == '') {
                                $("#invite_detail_mapimg7044").hide();
                                $("#map_canvas7044").show();
                            } else {
                                $("#invite_detail_mapimg7044").show();
                                $("#map_canvas7044").hide();
                            }


                        });
                    </script>





                </div>

            </div>
        </div>
    </div>
    <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
</div>





<h3 style="display:" id="invite_detail_title7046" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>

    <div name="button6" id="button5" class="button">
        <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
        <div class="button-mr">
            <div class="button-ml">
                <div class="button-mm">
                    <a href="#"><img class="iconimage" alt="6.png" src="style/{#$mould #}/image_files/5.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7046">{#if $title#}{#$title#}{#else#}爱情故事{#/if#}</span></a>
                </div>
            </div>
        </div>
        <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
    </div>
</h3>

<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7046" role="tabpanel" style="display: none;">
    <div id="detail7046" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
            <div class="detail-ml">
                <div class="detail-mm">


                    <div class="invitext">

                        <div id="remindtitle"><span><span style="font-size: large; ">{#$message #}</span></span></div>
                    </div>


                </div>

            </div>
        </div>
    </div>
    <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
</div>





<h3 style="display:" id="invite_detail_title7045" class="ui-accordion-header ui-helper-reset ui-state-default ui-corner-all" role="tab" aria-expanded="false" aria-selected="false" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-e"></span>

    <div name="button5" id="button6" class="button">
        <div class="button-tr"><div class="button-tl"><div class="button-tm"></div></div></div>
        <div class="button-mr">
            <div class="button-ml">
                <div class="button-mm">
                    <a href="#"><img class="iconimage" alt="5.png" src="style/{#$mould #}/image_files/6.png" border="0" align="absmiddle">&nbsp;<span id="invite_detail_name7045">{#if $title5#}{#$title5#}{#else#}婚礼提醒{#/if#}</span></a>
                </div>
            </div>
        </div>
        <div class="button-br"><div class="button-bl"><div class="button-bm"></div></div></div>
    </div>
</h3>

<div class="accordion ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="invite_detail_content7045" role="tabpanel" style="display: none;">
    <div id="detail7045" class="detail">
        <div class="detail-tr"><div class="detail-tl"><div class="detail-tm"></div></div></div>
        <div class="detail-mr">
            <div class="detail-ml">
                <div class="detail-mm">


                    <div style="margin-top:5px; margin-bottom:15px">
                        <div style="font-size:14px; margin-bottom:5px">倒计时还有:</div>
                        <div style="width:100%" align="center">
                            <input style="border:1px solid #777; background-color:#FFC; font-size:22px; color:#777;" type="text" id="lefttime" size="20">
                            <div style="font-size:12px; margin-top:5px"></div>
                        </div>
                    </div>
                    <input type="hidden" id="time" value="{#if $lasttime #}{#$lasttime#}{#else#}2014/9/9 12:30{#/if#}"/>
                    <SCRIPT LANGUAGE="JavaScript">
                        function _fresh()
                        {
                            var endtime=new Date(document.getElementById("time").value);
                            var nowtime = new Date();
                            var leftsecond=parseInt((endtime.getTime()-nowtime.getTime())/1000);
                            if(leftsecond<0){leftsecond=0;}
                                __d=parseInt(leftsecond/3600/24);
                            __h=parseInt((leftsecond/3600)%24);
                            __m=parseInt((leftsecond/60)%24);
                            __s=parseInt(leftsecond%60);
                            __all = __d+"天 "+__h+"小时"+__m+"分"+__s+"秒";
                            document.getElementById("lefttime").value=__all;
                        }
                        _fresh()
                        setInterval(_fresh,1000);
                    </SCRIPT>




                </div>

            </div>
        </div>
    </div>
    <div class="detail-br"><div class="detail-bl"><div class="detail-bm"></div></div></div>
</div>





</div>

<!--<div id="PhotoSwipeTarget"></div>-->

<div id="footer"><div id="copyright"><div id="copyright-text">本服务由QQ:2378822906提供</div></div></div>

</div>

<script language="JavaScript" src="./invit_files/wxshare.js" type="text/javascript"></script>


</body></html>