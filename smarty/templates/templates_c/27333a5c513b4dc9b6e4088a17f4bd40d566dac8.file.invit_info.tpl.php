<?php /* Smarty version Smarty-3.1.13, created on 2013-12-15 11:54:06
         compiled from "smarty/templates/templates/invit_info.tpl" */ ?>
<?php /*%%SmartyHeaderCode:196397020652ad985e9247a5-14697480%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '27333a5c513b4dc9b6e4088a17f4bd40d566dac8' => 
    array (
      0 => 'smarty/templates/templates/invit_info.tpl',
      1 => 1387096914,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '196397020652ad985e9247a5-14697480',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'target' => 0,
    'man' => 0,
    'women' => 0,
    'bigtitle' => 0,
    'mould' => 0,
    'show_time' => 0,
    'mini_time' => 0,
    'lasttime' => 0,
    'house' => 0,
    'adress' => 0,
    'title' => 0,
    'message' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_52ad985e9cee28_61764980',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ad985e9cee28_61764980')) {function content_52ad985e9cee28_61764980($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['target']->value=="true"){?>  
     <div class="alert alert-success">操作成功</div>
<?php }?>  
<?php if ($_smarty_tpl->tpl_vars['target']->value=="false"){?>  
     <div class="alert alert-danger">操作失败，重新提交</div> 
<?php }?>  


 <link rel="stylesheet" href="editor/jquery.wysiwyg.css" type="text/css" media="screen" />
  <script type="text/javascript" src="editor/jquery.wysiwyg.js"></script>
  <script type="text/javascript">
  $(function()
  {
      $('#message').wysiwyg();
  });
  $('#lasttime').tooltip('show')
  </script>


<form class="form-horizontal" role="form" ACTION="save_info.php"
		METHOD="POST" id="form1" name="form1" style="width: 90%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label tooltip"></label>
    <div class="col-sm-10">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">新郎</label>
    <div class="col-sm-10">
      <input class="form-control" name="man" type="text" id="man" value="<?php echo $_smarty_tpl->tpl_vars['man']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">新娘</label>
    <div class="col-sm-10">
      <input class="form-control" name="women" type="text" id="women" value="<?php echo $_smarty_tpl->tpl_vars['women']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴标题</label>
    <div class="col-sm-10">
      <input class="form-control" name="bigtitle" type="text" id="title" value="<?php echo $_smarty_tpl->tpl_vars['bigtitle']->value;?>
" placeholder="例如：帅哥和美女结婚了"/>
    </div>
  </div>
  <!--  
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">请柬风格</label>
    <div class="col-sm-10">
      <select class="form-control" name="mould">
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="入场券"){?>selected="selected"<?php }?> value ="入场券">入场券</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="典雅古风"){?>selected="selected"<?php }?> value ="典雅古风">典雅古风</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="粉红浪漫"){?>selected="selected"<?php }?> value="粉红浪漫">粉红浪漫</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="金色永恒"){?>selected="selected"<?php }?> value="金色永恒">金色永恒</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="桃色经典"){?>selected="selected"<?php }?> value="桃色经典">桃色经典</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="正港台味"){?>selected="selected"<?php }?> value="正港台味">正港台味</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="蓝色梦幻"){?>selected="selected"<?php }?> value="蓝色梦幻">蓝色梦幻</option>
              <option <?php if ($_smarty_tpl->tpl_vars['mould']->value=="温馨淡黄"){?>selected="selected"<?php }?> value="温馨淡黄">温馨淡黄</option>
		</select>
    </div>
  </div>-->

  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴日期</label>
    <div class="col-sm-10">
      <input class="form-control" name="show_time" type="text" id="show_time"
			value="<?php echo $_smarty_tpl->tpl_vars['show_time']->value;?>
" placeholder="例如：2013年1月1日  星期四"/> 
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴时分</label>
    <div class="col-sm-10">
      <input class="form-control" name="mini_time" type="text" id="Text2"
			value="<?php echo $_smarty_tpl->tpl_vars['mini_time']->value;?>
" placeholder="例如：下午5:30入席"/> 
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚礼提醒时间（结婚时间）</label>
    <div class="col-sm-10">
      <input class="form-control" name="lasttime" type="text" id="lasttime"
			value="<?php echo $_smarty_tpl->tpl_vars['lasttime']->value;?>
" placeholder="格式：2013/9/9 12:30" data-toggle="tooltip" title="格式：2013/9/9 12:30"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">席设</label>
    <div class="col-sm-10">
      <input class="form-control" name="house" type="text" id="house" value="<?php echo $_smarty_tpl->tpl_vars['house']->value;?>
"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴地址</label>
    <div class="col-sm-10">
      <input class="form-control" name="adress" type="text" id="adress"
			value="<?php echo $_smarty_tpl->tpl_vars['adress']->value;?>
" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">自定义标题</label>
    <div class="col-sm-10">
      <input class="form-control" name="title" type="text" id="title" value="<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
" placeholder="例如：爱情故事"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">自定义文本</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="message" cols="30" rows="5"
			id="message"><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</textarea>
    </div>
  </div>

  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">提交</button>
    </div>
  </div>
</form><?php }} ?>