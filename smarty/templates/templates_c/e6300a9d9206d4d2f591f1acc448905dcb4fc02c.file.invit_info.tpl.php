<?php /* Smarty version Smarty-3.1.13, created on 2013-11-04 09:25:59
         compiled from "smarty\templates\templates\invit_info.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2680525cebb0e0eb70-83849667%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e6300a9d9206d4d2f591f1acc448905dcb4fc02c' => 
    array (
      0 => 'smarty\\templates\\templates\\invit_info.tpl',
      1 => 1383557153,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2680525cebb0e0eb70-83849667',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.13',
  'unifunc' => 'content_525cebb0e8e097_71250739',
  'variables' => 
  array (
    'target' => 0,
    'man' => 0,
    'women' => 0,
    'bigtitle' => 0,
    'mould' => 0,
    'mp3list' => 0,
    'music' => 0,
    'show_time' => 0,
    'mini_time' => 0,
    'lasttime' => 0,
    'house' => 0,
    'adress' => 0,
    'title' => 0,
    'message' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_525cebb0e8e097_71250739')) {function content_525cebb0e8e097_71250739($_smarty_tpl) {?>
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
		METHOD="POST" id="form1" name="form1" style="width: 80%; margin: auto;">
		<input type="hidden" name="insert" value="insert" />
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label tooltip">超时提醒</label>
    <div class="col-sm-10">
      半小时后提交的信息将无法保存，需要重新登录。
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
		</select>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">背景音乐</label>
    <div class="col-sm-10">
      <select class="form-control" name="music">
		<?php echo $_smarty_tpl->tpl_vars['mp3list']->value;?>

		<?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['name'] = 'customer';
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['mp3list']->value) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['customer']['total']);
?>
			<option <?php if ($_smarty_tpl->tpl_vars['music']->value==$_smarty_tpl->tpl_vars['mp3list']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']]){?>selected="selected"<?php }?> value ="<?php echo $_smarty_tpl->tpl_vars['mp3list']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
"><?php echo $_smarty_tpl->tpl_vars['mp3list']->value[$_smarty_tpl->getVariable('smarty')->value['section']['customer']['index']];?>
</option>
		<?php endfor; endif; ?>
		
		</select>
    </div>
  </div>
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
    <label for="inputPassword3" class="col-sm-2 control-label">婚礼提醒时间</label>
    <div class="col-sm-10">
      <input class="form-control" name="lasttime" type="text" id="lasttime"
			value="<?php echo $_smarty_tpl->tpl_vars['lasttime']->value;?>
" placeholder="格式：2013/9/9 12:30" data-toggle="tooltip" title="格式：2013/9/9 12:30"/>
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">婚宴酒店</label>
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