<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'VipDO.class.php';
require 'UserDO.class.php';
require 'ShujuDO.class.php';
Globle::initSmarty();

echo $_SERVER['HTTP_USER_AGENT'];

?>