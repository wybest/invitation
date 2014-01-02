<?php

class  Globle {

	public static $a = "aaaa";
	public static $smarty;
	public static function initSmarty(){
		if(Globle::$smarty==null){
			Globle::$smarty = new Smarty();//设置各个目录的路径，这里是安装的重点
			Globle::$smarty->template_dir ="smarty/templates/templates";
			Globle::$smarty->compile_dir ="smarty/templates/templates_c";
			Globle::$smarty->config_dir = "smarty/templates/config";
			Globle::$smarty->cache_dir ="smarty/templates/cache";
			//smarty模板有高速缓存的功能，如果这里是true的话即打开caching，但是会造成网页不立即更新的问题，当然也可以通过其他的办法解决
			Globle::$smarty->caching = false;
			Globle::$smarty->left_delimiter = "{#"; //重新定义边界，因为默认边界“{}“符，在html页面中嵌入js脚本文件编写代码段时使用的就是”{}“符，自定义边界符还可以是<{ }>, {/ /} 等
			Globle::$smarty->right_delimiter = "#}";
		}
	}

	public static function logError($content)
	{
		$logfile = '/logs/errorlog'.date('Ymd').'.txt';
		if(!file_exists(dirname($logfile)))
		{
			@File_Util::mkdirr(dirname($logfile));
		}
		error_log(date("[Y-m-d H:i:s]")." -[".$_SERVER['REQUEST_URI']."] :".$content."\n", 3,$logfile);
	}
}

?>
