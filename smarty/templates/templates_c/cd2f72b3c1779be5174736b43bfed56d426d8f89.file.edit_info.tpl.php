<?php /* Smarty version Smarty-3.1.13, created on 2013-12-13 13:19:45
         compiled from "smarty/templates/templates/edit_info.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6983226252ab0971074000-20486207%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'cd2f72b3c1779be5174736b43bfed56d426d8f89' => 
    array (
      0 => 'smarty/templates/templates/edit_info.tpl',
      1 => 1386915116,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6983226252ab0971074000-20486207',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'target' => 0,
    'message' => 0,
    'is_pay' => 0,
    'name' => 0,
    'is_phone' => 0,
    'is_pc' => 0,
    'vip_num' => 0,
    'advert' => 0,
    'font_family' => 0,
    'extends' => 0,
    'special_name' => 0,
    'title1' => 0,
    'title2' => 0,
    'title3' => 0,
    'title4' => 0,
    'title5' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ab09710b9498_12634782',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ab09710b9498_12634782')) {function content_52ab09710b9498_12634782($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
     <div class="alert alert-danger">操作失败，重新提交</div> 
<?php }?>  



<form class="form-horizontal" role="form" ACTION="edit_info.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label tooltip"></label>
    <div class="col-sm-10">
    </div>
  </div>
  <div class="form-group">
    <label ><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</label>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">付款状态</label>
    <div class="col-sm-10">
      <?php if ($_smarty_tpl->tpl_vars['is_pay']->value==0){?>未付款<?php }else{ ?>已付款<?php }?>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">账户名</label>
    <div class="col-sm-10">
      <input class="form-control" name="uname" type="text" id="uname" value="<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">开通手机版</label>
    <div class="col-sm-10">
      <select name="isphone">
                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_phone']->value==0){?>selected="selected"<?php }?> value="0">关闭</option>
                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_phone']->value==1){?>selected="selected"<?php }?> value="1">开通</option>
                                                </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">开通电脑版</label>
    <div class="col-sm-10">
     <select name="ispc"><?php echo $_smarty_tpl->tpl_vars['is_pc']->value;?>

                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_pc']->value==0){?>selected="selected"<?php }?> value="0">关闭</option>
                                                	<option <?php if ($_smarty_tpl->tpl_vars['is_pc']->value==1){?>selected="selected"<?php }?> value="1">开通</option>
                                                </select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">贵宾数量</label>
    <div class="col-sm-10">
      <input class="form-control" name="vip_num" type="text" id="vip_num" value="<?php echo $_smarty_tpl->tpl_vars['vip_num']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">广告</label>
    <div class="col-sm-10">
      <input class="form-control" name="advert" type="text" id="advert" value="<?php echo $_smarty_tpl->tpl_vars['advert']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">字体</label>
    <div class="col-sm-10">
      <input class="form-control" name="font_family" type="text" id="font_family" value="<?php echo $_smarty_tpl->tpl_vars['font_family']->value;?>
"/>
    </div>
  </div>
  
  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">祝福信息</label>
    <div class="col-sm-10">
      <input class="form-control" name="extends" type="text" id="extends" value="<?php echo $_smarty_tpl->tpl_vars['extends']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">特别称呼</label>
    <div class="col-sm-10">
      <input class="form-control" name="special_name" type="text" id="special_name" value="<?php echo $_smarty_tpl->tpl_vars['special_name']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">爱的邀约</label>
    <div class="col-sm-10">
      <input class="form-control" name="title1" type="text" id="title1" value="<?php echo $_smarty_tpl->tpl_vars['title1']->value;?>
"/>
    </div>
  </div>
 <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚纱相册</label>
    <div class="col-sm-10">
      <input class="form-control" name="title2" type="text" id="title2" value="<?php echo $_smarty_tpl->tpl_vars['title2']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴回函</label>
    <div class="col-sm-10">
      <input class="form-control" name="title3" type="text" id="title3" value="<?php echo $_smarty_tpl->tpl_vars['title3']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴地图</label>
    <div class="col-sm-10">
      <input class="form-control" name="title4" type="text" id="title4" value="<?php echo $_smarty_tpl->tpl_vars['title4']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚礼提醒</label>
    <div class="col-sm-10">
      <input class="form-control" name="title5" type="text" id="title5" value="<?php echo $_smarty_tpl->tpl_vars['title5']->value;?>
"/>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">提交</button>
    </div>
  </div>
</form><?php }} ?>