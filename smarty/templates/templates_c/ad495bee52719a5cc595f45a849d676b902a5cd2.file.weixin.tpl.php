<?php /* Smarty version Smarty-3.1.13, created on 2013-12-08 14:48:20
         compiled from "smarty\templates\templates\weixin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3118052a481bd23cad2-92837325%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ad495bee52719a5cc595f45a849d676b902a5cd2' => 
    array (
      0 => 'smarty\\templates\\templates\\weixin.tpl',
      1 => 1386514001,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3118052a481bd23cad2-92837325',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52a481bd2f1617_89356605',
  'variables' => 
  array (
    'target' => 0,
    'weixin' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52a481bd2f1617_89356605')) {function content_52a481bd2f1617_89356605($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
     <div class="alert alert-danger">操作失败，重新提交</div> 
<?php }?>  



<form class="form-horizontal" role="form" ACTION="save_weixin.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label >自定义微信名片文字（不填写默认使用"诚挚邀请您来参加，点击查看详情."）</label>
  </div>		
  <div class="form-group">
    <div class="col-sm-10">
      <textarea style="float: left;"  name="weixin" cols="30" rows="5"
			id="weixin"><?php echo $_smarty_tpl->tpl_vars['weixin']->value;?>
</textarea>
	  <img style="float: left;width: 270px; height: 125px;" src="images/f.jpg">		
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">提交</button>
    </div>
  </div>
</form><?php }} ?>