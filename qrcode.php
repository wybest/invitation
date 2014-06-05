<?php
include('phpqrcode.php');
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
Globle::initSmarty();
require 'is_login.php';
QRcode::png($adress);
?>