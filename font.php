<?php
/**
 * Created by IntelliJ IDEA.
 * User: wy
 * Date: 13-12-21
 * Time: 下午9:17
 */
header('Content-Type:text/html; charset=UTF-8');
$param=$_REQUEST['param'];
$pn=$_REQUEST['pn'];
if($param == "a"){
    echo '@font-face {
font-family:'.$pn.';
src:
url(http://localhost:8080/invitation/font/a/2e5ecfae-732e-47d3-9d73-3fb7b0dc1636iwoff)  format("woff");
}';
}elseif($param == "b"){
        echo '@font-face {
font-family:'.$pn.';
src:
url(http://localhost:8080/invitation/font/b/a9d3d857-ff68-4f56-bac7-0457c4295a36iwoff)  format("woff");
}';
}elseif($param == "c"){
    echo '@font-face {
font-family:'.$pn.';
src:
url(http://localhost:8080/invitation/font/c/8711e582-a812-4906-856c-0102fdd12d03iwoff)  format("woff");
}';
}elseif($param == "d"){
    echo '@font-face {
font-family:'.$pn.';
src:
url(http://localhost:8080/invitation/font/d/1b08b9ab-ba6b-4662-aaa4-a281caf2b83eiwoff)  format("woff");
}';
}

