function msg_replay(i){
	var e=$(i);
	var id=parseInt(e.attr('rel'),10);
	if (id>0){
		var name=e.parent().find('cite').html();
		$('#re_wid').val(id);
		$('#rep_name').html(name);
		var msg=e.parent().parent().find('p.rep');
		if (msg.length>0){
			msg=msg.find('span').html();
		}else{
			msg='';
		}
		$('body,html').animate({scrollTop:1000},100,'swing',function(){
			$('#rep_info').val(msg).focus();
		});
	}
}

function sub_rep(u){
	var id=parseInt($('#re_wid').val(),10);
	if (id>0){
		var msg=$('#rep_info').val();
		$.ajax({
			type:'post',
			url:'/s/eic/response.php?u='+u,
			data:{'id':id,'msg':msg},
			success:function(d){
				if (d=='1'){
					$.dialog.tips('<p class="tips_12_g">回复成功</p>');
				}else if (d=='-1'){
					$.dialog.tips('<p class="tips_12_g">留言信息不存在</p>');
				}else if(d=='-2'){
					$.dialog.tips('<p class="tips_12_g">没有回复权限</p>');
				}
				getHtml('/m'+u+'/words.html');
			}
		});
	}else{
		$.dialog.tips('<p class="tips_12_g">请选择一条祝福,再进行回复</p>');
	}
}


function form_z_sub(name){


    var guest = $('#guest').val();
    var zf = $('#message').val();
    var pnum = $('#pnum').val();
    if(guest == ''){
        $.dialog.tips('<p class="tips_12_g">请填写您的姓名</p>');
        $('#guest').focus();
        return;
    }
    if(zf == ''){
        $.dialog.tips('<p class="tips_12_g">留言内容不能少于5个字符</p>');
        $('#message').focus();
        return;
    }

    var username=name;

    $.post('save_shuju.php', {user:username, guest:encodeURIComponent(guest), zf:encodeURIComponent(zf), pnum:encodeURIComponent(pnum)}, function (data){
        $.dialog.tips('<p class="tips_12_g">发布成功</p>');
    });

}