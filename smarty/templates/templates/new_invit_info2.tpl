
{#if $target  eq  "true"#}  
     <div class="alert alert-success">操作成功</div>
{#/if#}  
{#if $target  eq  "false"#}  
     <div class="alert alert-danger">操作失败，重新提交</div> 
{#/if#}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0071) -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=8">

<title>{#if $bigtitle #}{#$bigtitle#}{#else#}美男与美女婚宴邀约{#/if#}</title>


<link href="example_files/styles.css" type="text/css" rel="stylesheet">
<link href="example_files/photoswipe.css" type="text/css" rel="stylesheet">



<link href="example_files/movcard.css.asp" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="example_files/jquery-ui-1.8.18.custom.full_leo.css" type="text/css" media="screen" charset="utf-8">

<script type="text/javascript" src="example_files/jquery-latest.js"></script>
<script type="text/javascript" src="example_files/jquery-ui-1.8.18.full.min.js"></script>

<script type="text/javascript" src="example_files/date.format.js"></script>

<script	type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=309d55cca0d6814ffb4668758d817124"></script>


<link rel="stylesheet" href="editor/jquery.wysiwyg.css" type="text/css" media="screen" />
<script type="text/javascript" src="editor/jquery.wysiwyg.js"></script>
<script type="text/javascript">

document.oncontextmenu = function (event){
    if(window.event){
        event = window.event;
    }try{
        var the = event.srcElement;
        if (!((the.tagName == "INPUT" && the.type.toLowerCase() == "text") || the.tagName == "TEXTAREA")){
            return false;
        }
        return true;
    }catch (e){
        return false;
    }
}

function MM_goToURL() { //v3.0
    var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
    for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
function MM_preloadImages() { //v3.0
    var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
        var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
            if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
    var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
    var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
        d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
    if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
    for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
    if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
    var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
        if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
                }



    var bshow7042 = 1;

    var bshow7041 = 1;

    var bshow7043 = 1;

    var bshow7044 = 1;


    var geocoder7044;

    function codeAddress7044(address) {
        //var address = document.getElementById("address7044").value;

        //alert(address);
        // Baidu map ?建地址解析器?例
        geocoder7044 = new BMap.Geocoder();
        // ?地址解析?果?示在地?上BMap,并?整地??野
        geocoder7044.getPoint(address, function(point){
            if (point) {
                map7044.setCenter(point);
                marker7044.setPosition(point);
                $('#invite_detail_latcenter7044').val(point.lat);
                $('#invite_detail_lngcenter7044').val(point.lng);
                $('#invite_detail_latmarker7044').val(point.lat);
                $('#invite_detail_lngmarker7044').val(point.lng);

                $('#iframepage').get(0).contentWindow.setMapCenter7044(point.lng,point.lat);
                $('#iframepage').get(0).contentWindow.setMarkerPos7044(point.lng,point.lat);


            } else {
                alert("定位失败, 请修改地址後再试一次，失败原因： " + status);
            }
        }, "");

    }

    //baidu map
    var map7044 = null;
    var marker2

    var map;

    function initialize7044() {

        map = new BMap.Map("map_canvas7044");//在指定的容器内创建地图实例
        map.setDefaultCursor("crosshair");//设置地图默认的鼠标指针样式
        map.enableScrollWheelZoom();//启用滚轮放大缩小，默认禁用。
        map.centerAndZoom(new BMap.Point({#if $coordinate #}{#$coordinate#}{#else#}116.404, 39.915{#/if#}), 15);
        map.addControl(new BMap.NavigationControl());


        var pt = new BMap.Point({#if $coordinate #}{#$coordinate#}{#else#}116.404, 39.915{#/if#});
        var myIcon = new BMap.Icon("style/桃色经典/image_files/markers.gif", new BMap.Size(25,21));
        marker2 = new BMap.Marker(pt,{
            icon:myIcon
        });// 创建标注
        map.addOverlay(marker2);// 将标注添加到地图中

        initlistener();
    }

    function initlistener(){
        map.addEventListener("click", function(e){//地图单击事件
            $('#invite_detail_latmarker7044').val(e.point.lat);
            $('#invite_detail_lngmarker7044').val(e.point.lng);
            //$('#iframepage').get(0).contentWindow.setMarkerPos7044(e.point.lng,e.point.lat);
            marker2.setPosition(new BMap.Point(e.point.lng,e.point.lat)) ;
            document.getElementById("coordinate").value = e.point.lng + "," + e.point.lat;
        });

        map.addEventListener("moving", function(){
            var center = map.getCenter();
            //alert("地?中心??更?：" + center.lng + ", " + center.lat);
            $('#invite_detail_latcenter7044').val(center.lat);
            $('#invite_detail_lngcenter7044').val(center.lng);
            //$('#iframepage').get(0).contentWindow.setMapCenter7044(center.lng,center.lat);
        });

        map.addEventListener("zoomend", function(){
            $('#invite_detail_zoom7044').val(map.getZoom());
            //$('#iframepage').get(0).contentWindow.setMapZoom7044(map.getZoom());
        });

        map.addEventListener("dragging", function(e){

            $('#invite_detail_latmarker7044').val(e.point.lat);
            $('#invite_detail_lngmarker7044').val(e.point.lng);
            //$('#iframepage').get(0).contentWindow.setMarkerPos7044(e.point.lng,e.point.lat);


        });
    }

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
        {"input" : "address7044"
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



var bshow7046 = 1;

var bshow7045 = 1;




$(function() {

    $( "#accordion_header" ).accordion({
        autoHeight: false,
        collapsible: true
    });

    $("#accordion_header").bind('accordionchange', function(event, ui) {
        // ui.newHeader // jQuery object, activated header
        // ui.oldHeader // jQuery object, previous header
        // ui.newContent // jQuery object, activated content
        // ui.oldContent // jQuery object, previous content
        //  alert($(ui.newHeader).attr("id") + " was opened, " + $(ui.oldHeader).attr("id") + " was closed");
        //   console.log(ui.newHeader.attr('id'));
        if (ui.newHeader.attr('id') == 'header')
        {
            $('#iframepage').contents().find('html, body').animate({scrollTop: 0});
        }


    });


    $( "#accordion_detail" ).accordion({
        autoHeight: false,
        collapsible: false
    });


});



$(document).ready(function(){
    $('input[type=text][title],input[type=password][title],textarea[title]').each(function(i){
        $(this).addClass('input-prompt-' + i);
        var promptSpan = $('<span class="input-prompt"/>');
        $(promptSpan).attr('id', 'input-prompt-' + i);
        $(promptSpan).append($(this).attr('title'));
        $(promptSpan).click(function(){
            $(this).hide();
            $('.' + $(this).attr('id')).focus();
        });
        if($(this).val() != ''){
            $(promptSpan).hide();
        }
        $(this).before(promptSpan);
        $(this).focus(function(){
            $('#input-prompt-' + i).hide();
        });

        $(this).change(function(){
            if($(this).val() != ''){
                $('#input-prompt-' + i).hide();
            }
        });
        $(this).blur(function(){
            if($(this).val() == ''){
                $('#input-prompt-' + i).show();
            }
        });
    });
});


function indexOfStr(strArray, searchString) {
    var found = -1;

    for (var i = 0; i < strArray.length; i++) {
        if (strArray[i] == searchString) {
            found = i;
            break;
        }
    }
    return found;
}

function getMinTextInOrder(txt){
    var txt_array_inorder = txt.split('').sort();

    if (txt_array_inorder.length > 0) {
        txt_min = txt_array_inorder[0];
        prechr = txt_array_inorder[0];
        for (i=1; i<txt_array_inorder.length; i++){
            if (txt_array_inorder[i] != prechr){
                prechr = txt_array_inorder[i];
                txt_min = txt_min + txt_array_inorder[i];
            }
        }
    } else {
        txt_min = "";
    }

    return txt_min;
}



function getMainPanelText(){

    var panel_text =  + $('#bigtitle').val() + $('#show_time').val();
    $('.tab_name').each( function () {
        panel_text = panel_text + $(this).val();
    });
    return encodeURIComponent(getMinTextInOrder(panel_text));
}

var delay = (function(){
    var timer = 0;
    return function(callback, ms){
        clearTimeout (timer);
        timer = setTimeout(callback, ms);
    };
})();


var webfont_index = 1;

function reloadMainPanelFont(){

    var fontData = $("#invite_fontface option:selected").val();
    var fontfamily = fontData.split('|')[0];alert(fontfamily.split(',')[0]);
    fontfamily = fontfamily.split(',')[0] + webfont_index;
    var fontface = fontData.split('|')[1]+"&pn="+fontfamily;

    $('#iframepage').contents().find(".fontcss").attr("href",fontface);alert(fontface);
    webfont_index = webfont_index + 1;
//    var fontfamily = '甜妞体21';
    alert(fontfamily);
    $('#iframepage').contents().find("body").css("font-family",fontfamily);
    $('#iframepage').contents().find(".ui-widget").css("font-family",fontfamily);

}




$(document).ready(function() {



//alert(getMainPanelText());
    $("#invite_style").change(function() {

        $('#mould').val($("#invite_style option:selected").val());

            $('#iframepage').attr('src','new_temp_phone2.php?tpl='+$("#invite_style option:selected").val()+"&md=home");


    });



    $("#invite_fontface").change(function() {
        $('#font_family').val($("#invite_fontface option:selected").text());
        reloadMainPanelFont();
    });







    $("#bigtitle,#show_time,.tab_name").keyup(function() {


        delay(function(){

            reloadMainPanelFont();

        }, 1000 );

    });




    $(".tab_name").addClass("tab_name_idle");


    //$( "#tabs" ).tabs({selected: 3});
    $( "#tabs" ).tabs({selected: -1});
    //$( "#tabs" ).tabs({ disabled: [2, 3] });

    $( "#tabs" ).tabs().find( ".ui-tabs-nav" ).sortable({ axis: "x",
        //start: function(event, ui) { alert("start sort") },
        items: 'li',
        update: function(event, ui) {
            var id_selected = ui.item.attr("id");
            var id_array = $(this).sortable('toArray');
            //console.log( id_selected );
            //console.log( id_array );


            //index_selected = id_array.indexOf(id_selected);
            index_selected = indexOfStr(id_array,id_selected);


//			 console.log( index_selected );
            if (index_selected != 0) {
                var id_moveto = id_array[index_selected-1];
                $('#iframepage').contents().find('#invite_detail_title' + id_selected ).insertAfter($('#iframepage').contents().find('#invite_detail_content' + id_moveto));

            } else {
                var id_moveto =  id_array[1];
                $('#iframepage').contents().find('#invite_detail_title' + id_selected ).insertBefore($('#iframepage').contents().find('#invite_detail_title' + id_moveto));
            }
            $('#iframepage').contents().find('#invite_detail_content' + id_selected ).insertAfter($('#iframepage').contents().find('#invite_detail_title' + id_selected));



            $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function


            //

            //var invite_detail_id = ui.tab.id.substr(19, ui.tab.id.length - 19 );
            //alert(invite_detail_id);
            //$("#div2").insertAfter("#div3");
            //$('#iframepage').contents().find('#invite_detail_title660').insertAfter($('#iframepage').contents().find('#invite_detail_content657'));
            //$('#iframepage').contents().find('#invite_detail_content660').insertAfter($('#iframepage').contents().find('#invite_detail_title660'));

            //$('#iframepage').contents().find('div[name="button1"]').attr('id','button400');
            //var id_buf = $('#iframepage').contents().find('div[name="button1"]').attr('id');
            //alert(id_buf);

        }
        //change: function(event, ui) { alert("change sort")}

    });

    function dinwei(invite_detail_id){
        var destination = 0;
        if(invite_detail_id=='7042'){
            $('#iframepage').contents().find('#close').click();
            $('#iframepage').contents().find('#close1').click();
            destination = $('#iframepage').contents().find('#textbox').offset().top;
        }
        if(invite_detail_id=='7041'){
            $('#iframepage').contents().find('#close').click();
            $('#iframepage').contents().find('#close1').click();
            destination = $('#iframepage').contents().find('#Gallery').offset().top;
        }
        if(invite_detail_id=='7043'){
            destination = $('#iframepage').contents().find('#submenu1').offset().top-400;
            $('#iframepage').contents().find('#close1').click();
            $('#iframepage').contents().find('#submenu1').click();
        }
        if(invite_detail_id=='7045'){
            destination = $('#iframepage').contents().find('#submenu3').offset().top-390;
            $('#iframepage').contents().find('#close').click();
            $('#iframepage').contents().find('#submenu3').click();

        }
        if(invite_detail_id=='7046'){
            $('#iframepage').contents().find('#close').click();
            $('#iframepage').contents().find('#close1').click();
            destination = $('#iframepage').contents().find('#saytext').offset().top;
        }
        if($.browser.safari){
            $('#iframepage').contents().find('body').animate( { scrollTop: destination }, 500, 'easeInQuad' );
        }else{
            $('#iframepage').contents().find('html').animate( { scrollTop: destination }, 500, 'easeInQuad' );
        }
        if(invite_detail_id=='7044'){
            $('#iframepage').attr('src','map.php?user={#$userID#}');
            $('#iframepage').load(function(){initlistener();});

        }
    }

    function dinwei3(invite_detail_id){
        if(invite_detail_id=='7042'){
            $('#iframepage').contents().find('#step2').click();
        }
        if(invite_detail_id=='7041'){
            $('#iframepage').contents().find('#step3').click();
        }
        if(invite_detail_id=='7043'){
            $('#iframepage').contents().find('#step5').click();
        }
        if(invite_detail_id=='7045'){
            $('#iframepage').contents().find('#step7').click();

        }
        if(invite_detail_id=='7046'){
            $('#iframepage').contents().find('#step4').click();
        }
        if(invite_detail_id=='7044'){
            $('#iframepage').contents().find('#step6').click();

        }
    }

    var upid = "";
    function dinwei10(invite_detail_id){
        var destination = 0;
        if(invite_detail_id=='7042'){
            destination = $('#iframepage').contents().find('.jiehun').offset().top;
        }
        if(invite_detail_id=='7041'){
//            $('#iframepage').contents().find('#step3').click();
        }
        if(invite_detail_id=='7043'){
            $('#iframepage').contents().find('#step5').click();
        }
        if(invite_detail_id=='7045'){
            $('#iframepage').contents().find('#step7').click();

        }
        if(invite_detail_id=='7046'){
            $('#iframepage').contents().find('#step4').click();
        }
        if(invite_detail_id=='7044'){
            $('#iframepage').contents().find('#step6').click();

        }

        if(upid=='7042'){
//            $('#iframepage').contents().find('#step2').click();
        }
        if(upid=='7041'){
//            $('#iframepage').contents().find('#step3').click();
        }
        if(upid=='7043'){
            $('#iframepage').contents().find('#step5').click();
        }
        if(upid=='7045'){
            $('#iframepage').contents().find('#step7').click();

        }
        if(upid=='7046'){
            $('#iframepage').contents().find('#step4').click();
        }
        if(upid=='7044'){
            $('#iframepage').contents().find('#step6').click();

        }
        if($.browser.safari){
            $('#iframepage').contents().find('body').animate( { scrollTop: destination }, 500, 'easeInQuad' );
        }else{
            $('#iframepage').contents().find('html').animate( { scrollTop: destination }, 500, 'easeInQuad' );
        }
        upid = invite_detail_id;
    }

    function dinwei9(invite_detail_id){
        var destination = 0;
        if(invite_detail_id=='7042'){
            destination = $('#iframepage').contents().find('#weddinginfo').offset().top-200;
        }
        if(invite_detail_id=='7041'){
        }
        if(invite_detail_id=='7043'){
        }
        if(invite_detail_id=='7045'){
            alert("该模板没有这个主题哦");
        }
        if(invite_detail_id=='7046'){
            alert("该模板没有这个主题哦");
        }
        if(invite_detail_id=='7044'){
        }
        if($.browser.safari){
            $('#iframepage').contents().find('body').animate( { scrollTop: destination }, 500, 'easeInQuad' );
        }else{
            $('#iframepage').contents().find('html').animate( { scrollTop: destination }, 500, 'easeInQuad' );
        }
    }

    $('#tabs').bind('tabsselect', function(event, ui) {


        var invite_detail_id = ui.tab.id.substr(19, ui.tab.id.length - 19 );

            if(invite_detail_id=='7042'){
                $('#iframepage').attr('src','new_temp_phone2.php?tpl='+$("#invite_style option:selected").val()+'&md=invite');
            }
            else if(invite_detail_id=='7041'){
                $('#iframepage').attr('src','new_temp_phone2.php?tpl='+$("#invite_style option:selected").val()+'&md=photo');
            }
            else if(invite_detail_id=='7043'){
                $('#iframepage').attr('src','new_temp_phone2.php?tpl='+$("#invite_style option:selected").val()+'&md=words');
            }
            else if(invite_detail_id=='7044'){
                $('#iframepage').attr('src','new_temp_phone2.php?tpl='+$("#invite_style option:selected").val()+'&md=map');
            }
    });


    // initial when tab open

    var bReloadWebFontOnce = 1;

    // reload web font when new created invite replace text from dialog

    $('#tabs').bind('tabsshow', function(event, ui) {
        if (ui.panel.id == 'invite_detail_content7042' )
        {
            if (bReloadWebFontOnce == 1) {
//						ck_editor.execCommand( 'reloadWebFont');
                bReloadWebFontOnce = 0;
            }

        }
    });



    $('#tabs').bind('tabsshow', function(event, ui) {
        if (ui.panel.id == 'invite_detail_content7044' && !map7044 && $("#invite_detail_mapimgurl7044").val() == '')
        {
            //alert("initialize7044");
            initialize7044();
            //resizeMap();

        }
    });






});




</script>




<title>無標題文件</title>
<style type="text/css">



    .tab_name_idle {
        border: 1px solid transparent;
        background-color:transparent;
    }
    .tab_name_hide { color:#AAA;
    }

    .global_setting {
        margin:3px 3px 3px 3px;
    }
    /*

    .section-header {
        margin:4px 0px 4px 0px;
        padding:0px 0px 0px 0px;
        height:22px;
        background-color:#AAA;
        color:#FFF;
        font-size:16px;
        border-style:none;

    }
    */

    .section-content {
        padding:0px;
        margin: 0px;
    }

    .input-prompt {
        position: absolute;
        font-style: italic;
        color: #ddd;
        margin: 0.2em 0 0 0.5em;
    }

</style>




<style type="text/css">
    <!--
    .showText{

        font-size:9pt;
        border:0px solid #333;
    }

    .showInput{

        font-size:9pt;
        border:1px solid #333;
        background:#FFFFEB;

    }


    .editable {
        border:0px solid;
    }
    .editable:hover {
        border:2px dotted;
    }

    //-->
</style>


<script language="javascript">
<!--

$(document).ready(function() {

    //$(this).scrollTop(0);
});


<!-- fix jquery dialog bug of modal:true scrollbar  -->
(function( $, undefined ) {
    if ($.ui && $.ui.dialog) {
        $.ui.dialog.overlay.events = $.map('focus,keydown,keypress'.split(','), function(event) { return event + '.dialog-overlay'; }).join(' ');
    }
}(jQuery));


String.prototype.trim = function() { return this.replace(/^\s\s*/, '').replace(/\s\s*$/, '');};

String.prototype.ReplaceAll = function (AFindText,ARepText){

    raRegExp = new RegExp(AFindText,"g");
    return this.replace(raRegExp,ARepText)
}



function engstr(str){
    var subStr = "";
    for (i=0,n=str.length;i<n;i++){
        subStr = str.charCodeAt(i);
        if ((subStr > 256)){
            return false;
        }
    }
    return true;
}

function isIns(){



}


var maxid = 89993;

function addRow(parent_node){


    maxid++;

    //取得屬於要應用新增列的區塊
    var obj=document.getElementById( parent_node);
    //取得目前有多少欄位
    //var sIndex=obj.getElementsByTagName('div').length+1;
    var sIndex = maxid;

    //依照原表單格式,先建一個div
    var div=document.createElement('div');
    div.id = 's'+sIndex;
    div.style="valign: middle;";


    //再建立文字欄位,並指定相關屬性
    var input=document.createElement('input');
    input.type='radio';
    input.name='q'+parent_node.replace('q', '');
    //input.id='t'+sIndex;
    //把文字欄位和按鈕加到div中

    var span=document.createElement('span');
    span.className='editable';



    var txt=document.createElement('input');
    txt.type='text';
    txt.name='o'+parent_node.replace('q', '');
    txt.value='新增选项';
    txt.className='showText';
    txt.onfocus = function(){this.className='showInput';};
    txt.onblur = function(){this.className='showText';};
    txt.onkeyup = function(){setOptionTitle( sIndex, this.value);};


    var del=document.createElement('img');
    del.src='image/del.png';
    del.onclick = function(){ delRow( parent_node , 's' + sIndex );};
    del.style.cursor='pointer';
    del.vspace='5';
    del.hspace='5';
    del.align='absmiddle';

    span.appendChild(txt);

    div.appendChild(del);

    div.appendChild(span);

    // div.appendChild(input);



    //把div加到區塊中
    obj.appendChild(div);

    window.frames.iframepage.addRow(parent_node, maxid);

}

function delRow(q, t){

    d = document.getElementById(t);

    d.parentNode.removeChild(d);


    window.frames.iframepage.delRow(q, t);

}

function addOption(parent_node){


    maxid++;

    //取得屬於要應用新增列的區塊
    var obj=document.getElementById( parent_node);
    //取得目前有多少欄位
    //var sIndex=obj.getElementsByTagName('div').length+1;
    var sIndex = maxid;

    //依照原表單格式,先建一個div
    var div=document.createElement('div');
    div.id = 's'+sIndex;

    var span=document.createElement('span');
    span.className='editable';

    //再建立文字欄位,並指定相關屬性
    var input=document.createElement('input');
    input.type='radio';
    input.name='q'+parent_node.replace('q', '');
    //input.id='t'+sIndex;
    //把文字欄位和按鈕加到div中

    var txt=document.createElement('input');
    txt.type='text';
    txt.name='o'+parent_node.replace('q', '');
    txt.value='新增选项';
    txt.className='showText';
    txt.onfocus = function(){this.className='showInput';this.size=20;};
    txt.onblur = function(){this.className='showText';this.size=this.value.length*2;};
    txt.onkeyup = function(){window.frames.iframepage.updateSelect(parent_node, this.value);};
    txt.onclick = function(){window.frames.iframepage.updateSelect(parent_node, this.value);};



    var del=document.createElement('img');
    del.src='image/del.png';
    del.onclick = function(){ delOption( parent_node , 's' + sIndex );};
    del.style.cursor='pointer';
    del.vspace='5';
    del.hspace='5';
    del.align='absmiddle';

    span.appendChild(txt);
    div.appendChild(del);
    // div.appendChild(input);
    div.appendChild(span);



    //把div加到區塊中
    obj.appendChild(div);

    //alert(document.getElementById(parent_node).innerHTML);

    window.frames.iframepage.updateSelect(parent_node, '新增选项');

}

function delOption(q, t){

    d = document.getElementById(t);

    d.parentNode.removeChild(d);


    window.frames.iframepage.updateSelect(q);

}


function updateOption(t){


    var s = document.getElementById(t);
    var a = document.getElementById(t.replace('t', 'n'));

    var arr = a.value.split('\n')

    s.options.length = 0;

    s.options[0] = new Option(  '請選擇', 0);
    for (var i=0; i<arr.length; i++){

        if (arr[i] != ''){
            s.options[i+1] = new Option( arr[i], arr[i]);
        }
    }

}

function updateSelect(t){


    var s = document.getElementById(t);
    var a = document.getElementById(t.replace('t', 'n'));

    var arr = a.value.split('\n')

    s.options.length = 0;

    s.options[0] = new Option('請選擇', 0);
    for (var i=0; i<arr.length; i++){

        if (arr[i].Trim().length != 0){
            s.options[i+1] = new Option( arr[i], arr[i]);
        }
    }

}


function setQuestionTitle(qq, txt){


    window.frames.iframepage.setQuestionTitle(qq, txt);

}

function setOptionTitle(o, txt){

    //txt.replace(',', '，');
    window.frames.iframepage.setOptionTitle(o, txt);

}

function showQuestion(parent_node, check, pos){

    window.frames.iframepage.showQuestion(parent_node, check);

    if (check){
        document.form_invite.switch_status[pos].value = '1';
    }else{
        document.form_invite.switch_status[pos].value = '0';
    }

}


function doBold(id){

    var txt;

    txt = window.frames.iframepage.document.getElementById(id).childNodes[0];

    if ( txt.style.fontWeight == 'bold'){

        txt.style.fontWeight = 'normal';
        selOff( document.getElementById(id+'bold'));

    }else{

        txt.style.fontWeight = 'bold';
        selOn( document.getElementById(id+'bold'));

    }

    setHiddenHtml(id);

    //alert( window.frames.iframepage.document.getElementById(id).innerHTML);

}

function doItalic(id){

    var txt;

    txt = window.frames.iframepage.document.getElementById(id).childNodes[0];

    if ( txt.style.fontStyle == 'italic'){

        txt.style.fontStyle = 'normal';
        selOff( document.getElementById(id+'italic'));

    }else{

        txt.style.fontStyle = 'italic';
        selOn( document.getElementById(id+'italic'));


    }

    setHiddenHtml(id);

    //alert( window.frames.iframepage.document.getElementById(id).innerHTML);

}

function doUnderline(id){

    var txt;

    txt = window.frames.iframepage.document.getElementById(id).childNodes[0];

    if ( txt.style.textDecoration == 'underline'){

        txt.style.textDecoration = 'none';
        selOff( document.getElementById(id+'underline'));


    }else{

        txt.style.textDecoration = 'underline';
        selOn( document.getElementById(id+'underline'));

    }

    setHiddenHtml(id);

    //alert( window.frames.iframepage.document.getElementById(id).innerHTML);

}

function doFontSize( id, fontsize){

    var txt;

    txt = window.frames.iframepage.document.getElementById(id).childNodes[0];

    txt.style.fontSize = fontsize + 'px';

    setHiddenHtml(id);

}

function selOn(ctrl)
{
    ctrl.style.borderColor = '#000000';
    ctrl.style.backgroundColor = '#B5BED6';

}

function selOff(ctrl)
{
    ctrl.style.borderColor = '#ffffff';
    ctrl.style.backgroundColor = '#ffffff';
}


function setHiddenHtml(id){

    document.getElementById(id).value = window.frames.iframepage.document.getElementById(id).innerHTML;

    //alert(document.getElementById(id).value);
}



String.prototype.Trim = function()

{

    return this.replace(/(^\s*)|(\s*$)/g, "");

}



-->
</script>



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
    })();</script>
</head>



<body >
<center>
<table width="945" border="0" cellspacing="0" cellpadding="0">
    <tbody><tr>
        <td>

            <style type="text/css">
                <!--
                .style111 {color: #3fc9bf}
                .style222 {color: #3fc9bf}
                -->
            </style>





            <script language="javascript">
                <!--


                function openMenu(e){

                    var mx, my;
                    if (window.ActiveXObject){
                        mx = e.x;
                        my = e.y;
                    }else{
                        mx = e.clientX;
                        my = e.clientY;
                    }

                    document.getElementById('_usrmenu').style.display = '';
                    document.getElementById('_usrmenu').style.position = 'absolute';
                    document.getElementById('_usrmenu').style.left = ( document.documentElement.scrollLeft + mx - 20) + 'px';
                    document.getElementById('_usrmenu').style.top = ( document.documentElement.scrollTop + my  + 3 ) + 'px';


                }


                function closeMenu(){


                    document.getElementById('_usrmenu').style.display = 'none';



                }

                -->
            </script>
        </td>
    </tr>
    <tr>
        <td>
            <div id="tip4editor" style="height: 20px; overflow: hidden; ">
            </div>
        </td>
    </tr>
    </tbody></table>

<form action="new_save_info.php" method="post" name="form_invite" id="form_invite">
<input type="hidden" name="insert" value="insert" />
<table width="945" border="0" cellspacing="0" cellpadding="0">

<input type="hidden" id="slideshow" name="slideshow" value="">
<input type="hidden" id="invite_detailidarray" name="invite_detailidarray" value="">
<input type="hidden" id="invite_act" name="invite_act" value="">
<input type="hidden" name="invite_id" value="1534">
<input type="hidden" name="invite_bgcolor" value="#ffffff">
<input type="hidden" name="invite_color" value="#ff87c3">
<input type="hidden" name="invite_description" id="invite_description" value="">
<tbody><tr>
<td>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tbody><tr>
<td width="41%" valign="top">
    <div align="left" style=" padding-left:28px; padding-top:60px; background-image: url(&#39;images/mobile_invite/iphone4s_384x613.png&#39;); width: 384px; height: 560px; background-repeat: no-repeat;"><iframe id="iframepage" name="iframepage" allowtransparency="true" scrolling="auto" style="height: 485px; width: 327px; " src="new_temp_phone2.php" frameborder="0" marginwidth="0"></iframe></div>


</td>
<td width="59%" align="left" valign="top">
<div id="accordion_header" class="ui-accordion ui-widget ui-helper-reset ui-accordion-icons" role="tablist">
    <h3 id="header" class="ui-accordion-header ui-helper-reset ui-state-default ui-state-active ui-corner-top" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-s"></span><a href="#">&nbsp;&nbsp;封面</a></h3>
    <div class="section-content ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active" role="tabpanel">
        <div style="margin-left:20px">


            <table width="100%" border="0" cellpadding="2" cellspacing="1">
                <tbody><tr>
                    <td align="right" valign="top" width="100">风  格:</td>
                    <td colspan="2" valign="top">

                        <input type="hidden" name="mould" id="mould" value="{#if $mould #}{#$mould#}{#else#}桃色经典{#/if#}">
                        <input type="hidden" name="font_family" id="font_family" value="粗钢笔">

                        <select id="invite_style" >

                            <option {#if $mould eq "style24"#}selected="selected"{#/if#} value="style24">同心同德</option>
                            <option {#if $mould eq "style25"#}selected="selected"{#/if#} value="style25">幸福满满</option>
                            <option {#if $mould eq "style26"#}selected="selected"{#/if#} value="style26">城市之约</option>
                            <option {#if $mould eq "style27"#}selected="selected"{#/if#} value="style27">甜蜜岁月</option>
                            <option {#if $mould eq "style28"#}selected="selected"{#/if#} value="style28">白头偕老</option>
                            <option {#if $mould eq "style29"#}selected="selected"{#/if#} value="style29">爱之约</option>
                            <option {#if $mould eq "style30"#}selected="selected"{#/if#} value="style30">玫瑰之约</option>
                            <option {#if $mould eq "style31"#}selected="selected"{#/if#} value="style31">执子之手</option>
                        </select>
                        <!--
                        <label for="invite_fontface" style="font-family: 甜妞体214;">&nbsp;&nbsp;字　型: </label>
                        <select id="invite_fontface" >

                          <option value="粗钢笔2,微软雅黑,宋体,Microsoft JhengHei,Microsoft YaHei,arial|http://localhost:8080/invitation/font.php?param=a" selected="selected">粗钢笔</option>

                          <option value="黑体2,微软雅黑,宋体,Microsoft JhengHei,Microsoft YaHei,arial|http://localhost:8080/invitation/font.php?param=b">黑体</option>

                          <option value="粗行楷体2,微软雅黑,宋体,Microsoft JhengHei,Microsoft YaHei,arial|http://localhost:8080/invitation/font.php?param=c">粗行楷体</option>

                          <option value="甜妞体2,微软雅黑,宋体 Microsoft JhengHei,Microsoft YaHei,arial|http://localhost:8080/invitation/font.php?param=d">甜妞体</option>

                        </select>
                        -->
                    </td>
                </tr>
                <tr>
                    <td align="right" valign="top">主标题:</td>
                    <td colspan="2" valign="top">

                        <input type="text" id="bigtitle" name="bigtitle" value="{#if $bigtitle #}{#$bigtitle#}{#else#}美男与美女结婚啦{#/if#}" size="35">
                    </td>
                </tr>
                <tr>
                    <td width="55" align="right" valign="top">封面图: </td>
                    <td width="100" valign="top">
                        <img src="{#if $bigimage #}marryimg/{#$bigimage #}{#else#}marryimg/2013-12-15-12-15-31.jpg{#/if#}" width="100" align="top" id="invite_webimg">
                    </td>
                    <td width="367" valign="top"><input id="select_image" name="select_image" type="button" value="选择图片"></td>
                </tr>
                <tr>
                    <td align="right" valign="top">婚宴日期:</td>
                    <td colspan="2" valign="top">

                        <input type="text" id="show_time" name="show_time" value="{#if $show_time #}{#$show_time#}{#else#}2014年9月9日{#/if#}" size="35">

                    </td>
                </tr>
                <tr>
                    <td align="right" valign="top">音乐:</td>
                    <td colspan="2" valign="top">

                        <input  type="text" id="music" name="music" value="{#if $music #}{#$music#}{#else#}couldThisBeLove.mp3{#/if#}" size="25">

                        <input type="button" id="musicselect" value="选择歌曲">
                    </td>
                </tr>
                <tr>
                    <td align="right" valign="top">自定义音乐:</td>
                    <td colspan="2" valign="top">

                        <a target="_blank" href="http://www.baidu.com/#wd=%E5%A4%96%E9%93%BE%E9%9F%B3%E4%B9%90%E5%9C%B0%E5%9D%80&rsv_spt=1&issp=1&rsv_bp=0&ie=utf-8&tn=baiduhome_pg&rsv_sug3=1&rsv_sug4=128&inputT=896">外连接音乐(点击获取),地址复制到上面替换就可以</a>
                    </td>
                </tr>
                </tbody></table>
            <script>

                var $dialog_photo, $dialog_video;
                var temprnd=0;
                function reloadSelectVideoIframe(){
                    temprnd = temprnd +1;
                    var tail='?r='+ temprnd;
                    var oldurl=document.getElementById('selectvideoframepage').src;
                    var newurl = oldurl.split('?')[0] + tail;
                    document.getElementById('selectvideoframepage').src=newurl;
                    //alert('reload url:' + newurl);
                }

                $(document).ready(function() {

                    $("#bigtitle").bind('change keydown keyup paste input propertychange',function (){
                        $('#iframepage').contents().find("#maintitlehtml").find("span:eq(0)").html($(this).val());
//			setHiddenHtml('maintitlehtml');
                    });


                    //test webfont
                    //$("#bigtitle").bind('keyup',function (){
                    //	//"http://fonts.googleapis.com/css?family=Inconsolata&text=ABC"
                    //	var webfonturl = $('#iframepage').contents().find(".fontcss").attr("href");
                    //	var newwebfonturl = webfonturl.split('&')[0] + '&text=' + escape($(this).val());
                    //	$('#iframepage').contents().find(".fontcss").attr("href",newwebfonturl);
                    //});

                    $("#bigtitle").bind('focus',function (){
                        $('#iframepage').contents().find('html, body').animate({scrollTop: 0});
                        //$('#iframepage').animate({ scrollTop: 30 }, "slow");
                        //$('#iframepage').contents().animate({ scrollTop: $(document).height() }, "slow");
                    });
                    $("#show_time").bind('change keydown keyup paste input propertychange',function (){
                        $('#iframepage').contents().find("#show_time1").html($(this).val());
                        $('#iframepage').contents().find("#show_time2").html($(this).val());
                    });
                    $("#show_time").bind('focus',function (){
                        var destination = 0;
                        if($("#invite_style option:selected").text() == "红色典雅"){
                            destination = $('#iframepage').contents().find('#textbox').offset().top;
                        }else if($("#invite_style option:selected").val() == "phone9"){
                            destination = $('#iframepage').contents().find('#weddinginfo').offset().top-200;
                        }
                        $('#iframepage').contents().find('html, body').animate({scrollTop: destination});

                    });

                    $("#select_image").bind('click', function (e) {
                        //alert("select_image");
                        e.preventDefault();
                        $('#iframepage').contents().find('html, body').animate({scrollTop: 0});
                        var page = 'new_big_photo.php';
                        var pagetitle = '请选择作为封面的相片';
                        $dialog_photo = $('<div></div>')
                                .html('<iframe frameborder="0" border="0" cellspacing="0" style="border: none; " src="' + page + '" width="100%" height="100%"></iframe>')
                                .dialog({
                                    autoOpen: false,
                                    modal: false,
                                    //position: "right",
                                    width: 580,
                                    height: 610,
                                    title: pagetitle,
                                    buttons: {
                                        关闭: function() {
                                            $( this ).dialog( "close" );
                                        }
                                    }
                                });
                        $dialog_photo.dialog('open');


                    });

                    $("#musicselect").bind('click', function (e) {
                        e.preventDefault();
                        $('#iframepage').contents().find('html, body').animate({scrollTop: 0});
                        var page = 'new_music.php';
                        $dialog_photo = $('<div></div>')
                                .html('<iframe frameborder="0" border="0" cellspacing="0" style="border: none; " src="' + page + '" width="100%" height="100%"></iframe>')
                                .dialog({
                                    autoOpen: false,
                                    modal: false,
                                    //position: "right",
                                    width: 580,
                                    height: 300,
                                    title: "歌曲选择",
                                    buttons: {
                                        关闭: function() {
                                            $( this ).dialog( "close" );
                                        }
                                    }
                                });
                        $dialog_photo.dialog('open');


                    });





                });

            </script>


            <!--
                            <a id="load_title" href="#" >LOAD</a> <br>
                            <a id="save_title" href="#" >SAVE</a>





            -->

        </div>
    </div>
</div>

<div id="accordion_detail" class="ui-accordion ui-widget ui-helper-reset ui-accordion-icons" role="tablist">
<h3 class="ui-accordion-header ui-helper-reset ui-state-default ui-state-active ui-corner-top" role="tab" aria-expanded="true" aria-selected="true" tabindex="0"><span class="ui-icon ui-icon-triangle-1-s"></span><a href="#">&nbsp;&nbsp;主题编辑 </a></h3>
<div class="section-content ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active" role="tabpanel">

<div class="ui-widget">

<div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all ui-sortable">


    <li style="width: 24%;" id="7042" class="ui-state-default ui-corner-top"><a id="invite_detail_title7042" href="#invite_detail_content7042">

            <input class="tab_name tab_name_idle" type="text" id="invite_detail_name7042" name="title1" value="{#if $title1#}{#$title1#}{#else#}电子请柬{#/if#}" size="6">
        </a></li>
    <script>
        $("#invite_detail_name7042").bind('change keydown keyup paste input propertychange',function () {
            $('#iframepage').contents().find("#invite_detail_name7042").text($(this).val());

            // alert('Handler for .change() called.');
        });
    </script>


    <li style="width: 24%;" id="7041" class="ui-state-default ui-corner-top"><a id="invite_detail_title7041" href="#invite_detail_content7041">

            <input class="tab_name tab_name_idle" type="text" id="invite_detail_name7041" name="title2" value="{#if $title2#}{#$title2#}{#else#}婚纱照片{#/if#}" size="6">
        </a></li>
    <script>
        $("#invite_detail_name7041").bind('change keydown keyup paste input propertychange',function () {
            $('#iframepage').contents().find("#invite_detail_name7041").text($(this).val());

            // alert('Handler for .change() called.');
        });
    </script>


    <li style="width: 24%;" id="7043" class="ui-state-default ui-corner-top"><a id="invite_detail_title7043" href="#invite_detail_content7043">

            <input class="tab_name tab_name_idle" type="text" id="invite_detail_name7043" name="title3" value="{#if $title3#}{#$title3#}{#else#}祝福留言{#/if#}" size="6">
        </a></li>
    <script>
        $("#invite_detail_name7043").bind('change keydown keyup paste input propertychange',function () {
            $('#iframepage').contents().find("#invite_detail_name7043").text($(this).val());

            // alert('Handler for .change() called.');
        });
    </script>


    <li style="width: 24%;" id="7044" class="ui-state-default ui-corner-top"><a id="invite_detail_title7044" href="#invite_detail_content7044">

            <input class="tab_name tab_name_idle" type="text" id="invite_detail_name7044" name="title4" value="{#if $title4#}{#$title4#}{#else#}电子地图{#/if#}" size="6">
        </a></li>
    <script>
        $("#invite_detail_name7044").bind('change keydown keyup paste input propertychange',function () {
            $('#iframepage').contents().find("#invite_detail_name7044").text($(this).val());

            // alert('Handler for .change() called.');
        });
    </script>

</ul>









<div id="invite_detail_content7042" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
    <div align="right">
        <input name="invite_detail_id" id="invite_detail_id" type="hidden" value="7042">
        <input name="invite_detail_type" id="invite_detail_type" type="hidden" value="1">
        <input name="t1" {#if $t1 eq "1"#} checked="checked" {#/if#} type="checkbox" id="bshow7042" value="1">隐藏(只适用于带切换栏的主题)
    </div>
    <script>
        $(document).ready(function() {
            //set initial state.

            $('#bshow7042').change(function() {
                if ($(this).is(':checked')) {
                    //alert('hide');

                    //$("#invite_detail_name7042").attr("disabled",true);
                    $("#invite_detail_name7042").addClass("tab_name_hide");


                    bshow7042 = 0
                    $('#iframepage').contents().find("#invite_detail_title7042").hide();
                    $('#iframepage').contents().find("#invite_detail_content7042").hide();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "activate" , false )
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } );
                } else {
                    //alert('show');
                    //$("#invite_detail_name7042").attr("disabled",false);
                    $("#invite_detail_name7042").removeClass("tab_name_hide");
                    bshow7042 = 1;
                    $('#iframepage').contents().find("#invite_detail_title7042").show();
                    $('#iframepage').contents().find("#invite_detail_content7042").show();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } ).accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
                }
                $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function

            });
        });

    </script>

    <input type="hidden" name="invite_detail_fontindex7042" id="invite_detail_fontindex7042" value="1">
    <div style="color:#C6593D">

        <div class="invitext">

            <p class="ip6">时间：<span><input type="text" id="mini_time" name="mini_time" value="{#if $mini_time #}{#$mini_time#}{#else#}5:30入席{#/if#}"/></span></p>
            <p class="ip6">地点：<span><input type="text" id="house" name="house" value="{#if $house #}{#$house#}{#else#}香格里拉酒店{#/if#}" /></span></p><br />
        </div>
        <script>
            $("#man").bind('change keydown keyup paste input propertychange',function () {
                $('#iframepage').contents().find("#man").html($(this).val());
            });
            $("#woman").bind('change keydown keyup paste input propertychange',function () {
                $('#iframepage').contents().find("#man").html($(this).val());
            });
            $("#show_time").bind('change keydown keyup paste input propertychange',function () {
                $('#iframepage').contents().find("#show_time").html($(this).val());
            });
            $("#mini_time").bind('change keydown keyup paste input propertychange',function () {
                $('#iframepage').contents().find("#mini_time").html($(this).val());
            });
            $("#house").bind('change keydown keyup paste input propertychange',function () {
                $('#iframepage').contents().find("#house").html($(this).val());
            });
        </script>
    </div>
    <br>



</div><!--End Tab-XXX -->



<div id="invite_detail_content7041" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
    <div align="right">
        <input name="invite_detail_id" id="invite_detail_id" type="hidden" value="7041">
        <input name="invite_detail_type" id="invite_detail_type" type="hidden" value="7">
        <input name="t2" {#if $t2 eq "1"#} checked="checked" {#/if#} type="checkbox" id="bshow7041" value="1">隐藏(只适用于带切换栏的主题)
     </div>
     <script>
         $(document).ready(function() {
             //set initial state.

             $('#bshow7041').change(function() {
                 if ($(this).is(':checked')) {
                     //alert('hide');

                     //$("#invite_detail_name7041").attr("disabled",true);
                     $("#invite_detail_name7041").addClass("tab_name_hide");


                     bshow7041 = 0
                     $('#iframepage').contents().find("#invite_detail_title7041").hide();
                     $('#iframepage').contents().find("#invite_detail_content7041").hide();
                     $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "activate" , false )
 //					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } );
                 } else {
                     //alert('show');
                     //$("#invite_detail_name7041").attr("disabled",false);
                     $("#invite_detail_name7041").removeClass("tab_name_hide");
                     bshow7041 = 1;
                     $('#iframepage').contents().find("#invite_detail_title7041").show();
                     $('#iframepage').contents().find("#invite_detail_content7041").show();
                     $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
 //					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } ).accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
                 }
                 $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function

             });
         });

     </script>


     <!-- case 7 -->



    <style>
        #sortable { list-style-type: none; margin: 0; padding: 0; width: 450px; }
        #sortable li { margin: 3px 3px 3px 0; padding: 1px; float: left; width: 100px; height: 110px; font-size: 8pt; text-align: center; cursor: move;}
        #sortable li span{ cursor: pointer; }
        .thumb {
            width: 100px;
            height: 100px;
            overflow: hidden;
        }
        .thumb img.thumbimage  {
            width: 100%;
            height: auto;
        }
    </style>
    <script>
        $(function() {
            $("#sortable").sortable({

                deactivate: function(ev, ui){

                    syncGallery();
                }


            });

            $("#sortable").disableSelection();
        });
    </script>

    <input id="select_image2" name="select_image2" type="button" value="选择图片">



    <input type="hidden" name="sn" value="P3NLG">

    <input type="hidden" name="invite_usrcookies" value="">

    <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tbody><tr><td width="100%" height="30">

                <span id="nopicture">请点击上方按钮添加图片</span>

                <ul id="sortable" name="sortable" class="ui-sortable">
                    <!--<li id="40240" class="ui-state-default" fileurl="uploads/image/f0904273C82W2683.jpg"  style="text-align: right"><span><img src="images/close_button.png"></span><BR><img src="uploads/image/f0904273C82W2683.jpg" width="100" height="90"></li>-->

                    {#if $images != "none"#}
                    {#section name=customer loop=$images #}
                    <li id="40240" class="ui-state-default" fileurl="marryimg/{#$images[customer]#}"  style="text-align: right"><img src="marryimg/{#$images[customer]#}" width="100" height="90"></li>
                        {#/section#}
                        {#/if#}
                </ul>




            </td></tr>

        </tbody></table>





    <script>

        var $dialog_photo2;

        $(document).ready(function() {




            $("#select_image2").bind('click', function (e) {
                //alert("select_image");
                e.preventDefault();
                $('#iframepage').contents().find('html, body').animate({scrollTop: 1000});
                var page = 'new_image.php';
                var pagetitle = '请选择婚纱相册的相片';
                $dialog_photo2 = $('<div></div>')
                        .html('<iframe frameborder="0" border="0" cellspacing="0" style="border: none; " src="' + page + '" width="100%" height="100%"></iframe>')
                        .dialog({
                            autoOpen: false,
                            modal: true,
                            position: "left",
                            height: 610,
                            width: 580,
                            title: pagetitle,
                            buttons: {
                                关闭: function() {
                                    $( this ).dialog( "close" );

                                }
                            },

                            beforeClose: function (event, ui) {

                            }

                        });
                $dialog_photo2.dialog('open');

            });




        });


    </script>


    <!-- case 7 -->

</div><!--End Tab-XXX -->



<div id="invite_detail_content7043" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
    <div align="right">
        <input name="invite_detail_id" id="invite_detail_id" type="hidden" value="7043">
        <input name="invite_detail_type" id="invite_detail_type" type="hidden" value="3">
        展现回函数量：<input name="num" id="num" type="text" value="{#$snum#}">
        <input name="t3" {#if $t3 eq "1"#} checked="checked" {#/if#} type="checkbox" id="bshow7043" value="1">隐藏(只适用于带切换栏的主题)
      </div>
      <script>
          $(document).ready(function() {
              //set initial state.

              $('#bshow7043').change(function() {
                  if ($(this).is(':checked')) {
                      //alert('hide');

                      //$("#invite_detail_name7043").attr("disabled",true);
                      $("#invite_detail_name7043").addClass("tab_name_hide");


                      bshow7043 = 0
                      $('#iframepage').contents().find("#invite_detail_title7043").hide();
                      $('#iframepage').contents().find("#invite_detail_content7043").hide();
                      $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "activate" , false )
  //					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } );
                  } else {
                      //alert('show');
                      //$("#invite_detail_name7043").attr("disabled",false);
                      $("#invite_detail_name7043").removeClass("tab_name_hide");
                      bshow7043 = 1;
                      $('#iframepage').contents().find("#invite_detail_title7043").show();
                      $('#iframepage').contents().find("#invite_detail_content7043").show();
                      $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
  //					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } ).accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
                  }
                  $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function

              });
          });

      </script>

  </div><!--End Tab-XXX -->



<div id="invite_detail_content7044" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
    <div align="right">
        <input name="invite_detail_id" id="invite_detail_id" type="hidden" value="7044">
        <input name="invite_detail_type" id="invite_detail_type" type="hidden" value="4">
        <input name="t4" {#if $t4 eq "1"#} checked="checked" {#/if#} type="checkbox" id="bshow7044" value="1">隐藏(只适用于带切换栏的主题)
    </div>
    <script>
        $(document).ready(function() {
            //set initial state.

            $('#bshow7044').change(function() {
                if ($(this).is(':checked')) {
                    //alert('hide');

                    //$("#invite_detail_name7044").attr("disabled",true);
                    $("#invite_detail_name7044").addClass("tab_name_hide");


                    bshow7044 = 0
                    $('#iframepage').contents().find("#invite_detail_title7044").hide();
                    $('#iframepage').contents().find("#invite_detail_content7044").hide();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "activate" , false )
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } );
                } else {
                    //alert('show');
                    //$("#invite_detail_name7044").attr("disabled",false);
                    $("#invite_detail_name7044").removeClass("tab_name_hide");
                    bshow7044 = 1;
                    $('#iframepage').contents().find("#invite_detail_title7044").show();
                    $('#iframepage').contents().find("#invite_detail_content7044").show();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } ).accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
                }
                $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function

            });
        });

    </script>




    <input type="hidden" name="invite_detail_latmarker7044" id="invite_detail_latmarker7044" value="31.241401">
    <input type="hidden" name="invite_detail_lngmarker7044" id="invite_detail_lngmarker7044" value="121.512876">
    <input type="hidden" name="invite_detail_latcenter7044" id="invite_detail_latcenter7044" value="31.240629">
    <input type="hidden" name="invite_detail_lngcenter7044" id="invite_detail_lngcenter7044" value="121.512625">
    <input type="hidden" name="invite_detail_zoom7044" id="invite_detail_zoom7044" value="16">
    <input type="hidden" name="invite_detail_mapimgurl7044" id="invite_detail_mapimgurl7044" value="">

    <table width="100%" border="0">
        <tbody><tr>
            <td valign="top">

                <img id="invite_detail_mapimg7044" style="width: 240px; border: thin solid rgb(153, 153, 153); display: none;" src="" width="240" align="top">

                <div id="invite_detail_googlemap7044">
                    <input type="text" id="address7044" title="请输入地址后按下定位"  size="24" class="input-prompt-0">
                    <input type="button" id="button_setmap7044" value="定位">
                    <br>
                    <div id="map_canvas7044" style="width:240px; height:300px; border:thin; border-style:solid; border-color:#999; margin-bottom:5px;"></div>
                    <B>坐标：</B>
                    <input id="coordinate" name="coordinate" type="text"
                                          readonly="readonly" value="{#$coordinate#}"><br>
                    <B>地址：</B>
                    <input name="address" type="text" id="address" value="{#$address#}" >
                </div>
            </td>
        </tr>
        </tbody></table>


    <script language="javascript">
        $(document).ready(function() {
            $('#button_setmap7044').click(function() {
                sear($('#address7044').val());
                codeAddress7044($('#address7044').val());
            });

            $("#address").bind('change keydown keyup paste input propertychange',function (){
                $('#iframepage').contents().find("#map_desc7044").html("地址："+$(this).val().ReplaceAll('\r\n','\n').ReplaceAll('\n','<br>'));

                //setHiddenHtml('remindtitle');
            });



            //	console.log("mapurl="+$("#invite_detail_mapimgurl7044").val());

            if ($("#invite_detail_mapimgurl7044").val() == '') {
                $("#invite_detail_mapimg7044").hide();
                $("#invite_detail_googlemap7044").show();
                //$("#remove_map7044").attr("disabled", true);
                $("#remove_map7044").hide();
                $("#use_google_map7044").show();

            } else {
                $("#invite_detail_mapimg7044").show();
                $("#invite_detail_googlemap7044").hide();
                //$("#remove_map7044").attr("disabled", false);
                $("#remove_map7044").show();
                $("#use_google_map7044").hide();
            }



            $("#remove_map7044").bind('click', function (e) {

                $("#iframepage").contents().find('#invite_detail_mapimg7044').hide();
                $("#iframepage").contents().find('#map_canvas7044').show();
                $("#iframepage").contents().find('#invite_detail_mapimg7044').attr('src', '');
                $("#iframepage").contents().find('#invite_detail_mapimgurl7044').val('');

                if ($('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active") != $("#tabs").tabs( "option", "selected" ) ) {

                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion("activate",$("#tabs").tabs( "option", "selected" ));
                }
                $('#iframepage').get(0).contentWindow.initialize7044();





                $("#invite_detail_mapimg7044").hide();
                $("#invite_detail_googlemap7044").show();
                $("#invite_detail_mapimg7044").attr('src', '');
                $("#invite_detail_mapimgurl7044").val('');
                //$("#remove_map7044").attr("disabled", true);
                $("#remove_map7044").hide();
                $("#use_google_map7044").show();
                initialize7044();

                //alert("移除MV视频完成");


            });



        });
    </script>



</div><!--End Tab-XXX -->



<div id="invite_detail_content7046" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
    <div align="right">
        <input name="invite_detail_id" id="invite_detail_id" type="hidden" value="7046">
        <input name="invite_detail_type" id="invite_detail_type" type="hidden" value="6">
        <input name="t5" {#if $t5 eq "1"#} checked="checked" {#/if#} type="checkbox" id="bshow7046" value="1">隐藏(只适用于带切换栏的主题)
    </div>
    <script>
        $(document).ready(function() {
            //set initial state.

            $('#bshow7046').change(function() {
                if ($(this).is(':checked')) {
                    //alert('hide');

                    //$("#invite_detail_name7046").attr("disabled",true);
                    $("#invite_detail_name7046").addClass("tab_name_hide");


                    bshow7046 = 0
                    $('#iframepage').contents().find("#invite_detail_title7046").hide();
                    $('#iframepage').contents().find("#invite_detail_content7046").hide();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "activate" , false )
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } );
                } else {
                    //alert('show');
                    //$("#invite_detail_name7046").attr("disabled",false);
                    $("#invite_detail_name7046").removeClass("tab_name_hide");
                    bshow7046 = 1;
                    $('#iframepage').contents().find("#invite_detail_title7046").show();
                    $('#iframepage').contents().find("#invite_detail_content7046").show();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } ).accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
                }
                $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function

            });
        });

    </script>


    <table width="100%" cellpadding="0" cellspacing="0" border="0">
        <tbody><tr>
            <td width="77%" height="30" valign="top" bgcolor="#ffffff">
                <textarea name="message" id="remindtitle"  rows="3" style="width: 450px;">{#$message#}</textarea>

            </td>
        </tr>

        </tbody></table>
    <script>
        $(document).ready(function() {

            $('#remindtitle').wysiwyg();
            $("#remindtitleIFrame").contents().find("body:eq(0)").bind('change keydown keyup paste input propertychange',function (){
                $('#iframepage').contents().find("#remindtitle").find("span:eq(0)").html($("#remindtitleIFrame").contents().find("body:eq(0)").html());
                //setHiddenHtml('remindtitle');
            });


        });
    </script>





</div><!--End Tab-XXX -->



<div id="invite_detail_content7045" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
    <div align="right">
        <input name="invite_detail_id" id="invite_detail_id" type="hidden" value="7045">
        <input name="invite_detail_type" id="invite_detail_type" type="hidden" value="5">
        <input name="t6" {#if $t6 eq "1"#} checked="checked" {#/if#} type="checkbox" id="bshow7045" value="1">隐藏(只适用于带切换栏的主题)
    </div>
    <script>
        $(document).ready(function() {
            //set initial state.

            $('#bshow7045').change(function() {
                if ($(this).is(':checked')) {
                    //alert('hide');

                    //$("#invite_detail_name7045").attr("disabled",true);
                    $("#invite_detail_name7045").addClass("tab_name_hide");


                    bshow7045 = 0
                    $('#iframepage').contents().find("#invite_detail_title7045").hide();
                    $('#iframepage').contents().find("#invite_detail_content7045").hide();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "activate" , false )
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } );
                } else {
                    //alert('show');
                    //$("#invite_detail_name7045").attr("disabled",false);
                    $("#invite_detail_name7045").removeClass("tab_name_hide");
                    bshow7045 = 1;
                    $('#iframepage').contents().find("#invite_detail_title7045").show();
                    $('#iframepage').contents().find("#invite_detail_content7045").show();
                    $('#iframepage').get(0).contentWindow.$("#accordion").accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
//					$('#iframepage').get(0).contentWindow.$("#accordion").accordion('destroy').accordion({ autoHeight: false },{ collapsible: true,active: false } ).accordion( "option", "active", $('#tabs').tabs( "option", "selected" ) );
                }
                $('#iframepage').get(0).contentWindow.processButtonBackground();	//call iframe function

            });
        });

    </script>

    <input  id="time" name="time" type="text" value="{#if $lasttime #}{#$lasttime#}{#else#}2014/9/9 12:30{#/if#}"/>


    <script>
        $(document).ready(function(){

            $("#time").bind('change keydown keyup paste input propertychange',function (){
                $('#iframepage').contents().find("#time").val($(this).val());
            });

            $('.cb').click(function(){
                var id = $(this).attr('id');
                var inputId = "#bs" + id.replace("cb", "");
                var divId = "#share_but" + id.replace("cb", "");

                if ($(this).is(":checked")){
                    //alert('clicked: ' + inputId + ', 1' ) ;
                    $(inputId).val('1');
                    $('#iframepage').contents().find(divId).show();
                }else{
                    //alert('clicked: ' + inputId + ', 0' ) ;
                    $(inputId).val('0');
                    $('#iframepage').contents().find(divId).hide();
                }
            });
        });
    </script>


</div><!--End Tab-XXX -->



</div>

</div><!-- End invite_detail -->
</div>

</div>
<div style="margin-top: 10px">
    <button type="submit" class="btn btn-primary">提交</button>
</div>

</td>
</tr>
</tbody></table>
</td>
</tr>
</tbody></table>



<input type="hidden"  id="women" name="women" value="{#$women#}">
<input type="hidden" id="man" name="man" value="{#$man#}">
</form>

</center>

<script>
    //$(function() {
    $(document).ready(function(){

        String.prototype.ReplaceAll = function (AFindText,ARepText){
            raRegExp = new RegExp(AFindText,"g");
            return this.replace(raRegExp,ARepText)
        }
        var man = $( "#varman" ),
                women = $( "#varwomen" ),
                allFields = $( [] ).add( man ).add( women ),
                tips = $( ".validateTips" );



        function updateTips( t ) {
            tips
                    .text( t )
                    .addClass( "ui-state-highlight" );
            setTimeout(function() {
                tips
                        .removeClass( "ui-state-highlight", 1500 );
            }, 4500 );
        }





        // checkLength( man, "man", 1, 20 );
        function checkLength( o, n, min, max ) {
            if ( o.val().length > max || o.val().length < min ) {
                o.addClass( "ui-state-error" );
                //updateTips( "請輸入" + n + ", must be between " +  min + " and " + max + "." );
                updateTips( "请输入" + n + ", 本栏位不得空白 " );
                return false;
            } else {
                return true;
            }
        }





        {#if $women == "" #}
        {#if $man == "" #}
        var basicInfoDialog = $( "#basicInfo" ).dialog({
            width: 600,
            height: 380,
            modal: true,

            closeOnEscape: false,
            //open: function(event, ui) {  $(".ui-dialog-titlebar-close", ui.dialog).hide(); },
            close: function(event, ui) {


            },
            resizable: false,
            buttons: {

                确定: function() {

                    var bValid = true;
                    var   mapDescBuf;
                    mapDescBuf = $("#adress"  ).val();

                    allFields.removeClass( "ui-state-error" );
                    bValid = bValid && checkLength( man, "新郎姓名", 1, 20 );
                    bValid = bValid && checkLength( women, "新娘姓名", 1, 20 );
                    if ( bValid ) {
                        //新郎新娘
                        $("#bigtitle").val( $("#bigtitle").val().replace( '美女', women.val()).replace( '美男', man.val()) );
                        $("#bigtitle").change();

                        $('#iframepage').contents().find("#man").html(man.val());
                        $('#iframepage').contents().find("#women").html(women.val());
                        $("#man").val(man.val());
                        $("#women").val(women.val());
                        $("#time").val($("#invite_activitydate").val()+" "+$("#invite_activityhour").val()+":"+$("#invite_activityminute").val())
                        $('#iframepage').contents().find("#time").val($("#time").val());
                        //地址
                        $("#house").val($("#varhouse").val());
                        $("#house").change();
//								$("#adress").val(mapDescBuf);
//								$("#adress").change();
                        basicInfoDialog.closest('div.ui-dialog').appendTo('#form_invite'); //add dialog to form variable
                        $( this ).dialog( "close" );

//								reloadMainPanelFont();

//								$("#select_image").click();
                    }
                }
            }
        }); //basicInfoDialog end
        {#/if#}
        {#/if#}

    }); //end of $(document).ready





</script>



</div>
<div class="ui-dialog ui-widget ui-widget-content ui-corner-all ui-draggable" tabindex="-1" role="dialog" aria-labelledby="ui-dialog-title-basicInfo" style="display: none; z-index: 1002; outline: 0px; height: auto; width: 600px; top: 134.5px; left: 347.5px;"><div class="ui-dialog-titlebar ui-widget-header ui-corner-all ui-helper-clearfix"><span class="ui-dialog-title" id="ui-dialog-title-basicInfo">请填写婚宴喜讯基本资料</span><a href="#" class="ui-dialog-titlebar-close ui-corner-all" role="button"><span class="ui-icon ui-icon-closethick">close</span></a></div><div id="basicInfo" style="font-size: 16px; overflow: hidden; width: auto; min-height: 0px; height: 295.80000019073486px;" class="ui-dialog-content ui-widget-content" scrolltop="0" scrollleft="0">
        <p class="validateTips">请填写以下资料,才能生产请柬信息:</p>
        <br>

        <table width="100%" border="0">
            <tbody><tr>
                <td width="19%" style="text-align: right"><label for="varman">新郎姓名: </label></td>
                <td width="81%"><input class="text ui-widget-content ui-corner-all input-prompt-1" type="text" title="例如:美男" id="varman" name="varman" value="" size="15">(认真填写，不能修改)</td>
            </tr>
            <tr>
                <td style="text-align: right"><label for="varwomen">新娘姓名: </label></td>
                <td><input class="text ui-widget-content ui-corner-all input-prompt-2" type="text" title="例如:美女" id="varwomen" name="varwomen" value="" size="15">(认真填写，不能修改)</td>
            </tr>
            <tr>
                <td style="text-align: right"><label for="invite_activitydate">宴客日期: </label></td>
                <td>
                    <table width="100%" border="0">
                        <tbody><tr>
                            <td><input type="text" class="text ui-widget-content ui-corner-all input-prompt-3 hasDatepicker" id="invite_activitydate" name="invite_activitydate" value="2014/9/9" size="15"></td>
                            <td><label for="invite_activityhour">时间: </label></td>
                            <td><input type="text" title="例:12" class="text ui-widget-content ui-corner-all input-prompt-4" id="invite_activityhour" name="invite_activityhour" value="12" size="4"></td>
                            <td><label for="invite_activityminute">时</label></td>
                            <td><input type="text" title="例:30" class="text ui-widget-content ui-corner-all input-prompt-5" id="invite_activityminute" name="invite_activityminute" value="30" size="4"></td>
                            <td><label for="invite_activityminute">分</label></td>
                        </tr>
                        </tbody></table>
                </td>
            </tr>
            <tr>
                <td style="text-align: right"><label for="house">场所名称: </label></td>
                <td><input type="text" title="例如:香格里拉大酒店" class="text ui-widget-content ui-corner-all input-prompt-6" id="varhouse" name="varhouse" value="香格里拉酒店" size="30"></td>
            </tr>
            </tbody></table>
    </div>
</div>
</body></html>