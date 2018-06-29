<?php /*a:1:{s:53:"../html_template/admin/system_user/edit_password.html";i:1490064898;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>修改密码</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!--<fieldset class="layui-elem-field layui-field-title">
    <legend>
        <span class="layui-breadcrumb">
            <a href="javascript:;">用户管理</a>
            <a><cite>修改密码</cite></a>
        </span>
    </legend>
</fieldset>-->

<form class="layui-form layui-form-pane" action="" onclick="return false;">
    <div class="layui-form-item">
        <label class="layui-form-label">原始密码</label>
        <div class="layui-input-inline">
            <input type="password" name="old_password" lay-verify="required" placeholder="原始密码" autocomplete="off" class="layui-input">
        </div>
        <!--<div class="layui-form-mid layui-word-aux">必填</div>-->
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">新密码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" lay-verify="required" placeholder="新密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">再次输入</label>
        <div class="layui-input-inline">
            <input type="password" name="rep_password" lay-verify="required" placeholder="再次输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="sub">提交</button>
        </div>
    </div>
</form>

<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form','layer','element'], function () {
        var form = layui.form(), layer = layui.layer, element = layui.element(),$ = layui.jquery;

        //监听提交
        form.on('submit(sub)', function (data) {
            console.log(data.field);
            $.post("<?php echo url('edit_password'); ?>",data.field, function(res){
                 if(res.status > 0){
                    layer.msg(res.msg,{time:1800}, function(){
                        // 修改成功,登录失效,重新登录
                        location.href = "<?php echo url('login/index'); ?>";
                    })
                 }else{
                     // 提示错误
                     layer.msg(res.msg);
                 }
            });
            return false;
        });


    });
</script>
</body>
</html>