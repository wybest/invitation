<?php
require 'smarty/libs/Smarty.class.php';
require 'Globle.class.php';
require 'basicDB.php';
require 'MyDB.class.php';
require 'MessageDO.class.php';
require 'ShujuDO.class.php';
Globle::initSmarty();
require 'is_login.php';

$id = $_REQUEST['id'];
MyDB::deleteShujuByIdDB($id,$link);

echo '<script>location.href="receipt.php"</script>';

?>