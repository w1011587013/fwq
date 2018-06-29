<?php /*a:1:{s:44:"../html_template/admin/system/auth_edit.html";i:1490062466;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>修改权限组</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!-- 修改权限组信息 -->
<form class="layui-form edit-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">权限组名称</label>
        <div class="layui-input-inline">
            <input name="title" type="text" lay-verify="title|required" autocomplete="off" placeholder="请输入名称" class="layui-input" value="<?php echo !empty($data['title']) ? htmlentities($data['title']) : ''; ?>" />
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
        <?php if($data['status'] == '1'): ?>
            <input name="status" type="checkbox" lay-skin="switch" lay-filter="switch-status" lay-text="ON|OFF" checked value="1" />
        <?php else: ?>
            <input name="status" type="checkbox" lay-skin="switch" lay-filter="switch-status" lay-text="ON|OFF" value="0" />
        <?php endif; ?>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="id" type="hidden" value="<?php echo htmlentities($data['id']); ?>" />
            <button type="button" class="layui-btn" lay-submit="" lay-filter="edit-auth">提交</button>
        </div>
    </div>
</form>

<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/table-tool.js"></script>
<script type="text/javascript">
    layui.use(['element','layer','form'], function(){
        var $ = layui.jquery,element = layui.element,layer = layui.layer,form = layui.form();

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 2){
                    return '名称至少得2个字';
                }
            }
        });

        // 监听添加权限组的switch状态
        form.on('switch(switch-status)', function(data){
            // 赋值
            $(this).val(this.checked?1:0);
        });

        // 监听添加权限组提交
        form.on('submit(edit-auth)', function(data){
            console.log(data.field);
            // 请求
            $.post("<?php echo url('auth_edit'); ?>",data.field,function(res){
                if(res.status > 0){
                    layer.msg(res.msg,{time:1800},function(){
                        // 关闭父页面弹窗
                        parent.layer.closeAll();
                        // 刷新父页面
                        parent.location.href = "<?php echo url('auth'); ?>";
                    })
                }else{
                    layer.msg(res.msg,{time:1800});
                }
            });
            return false;
        });


    });
</script>
</body>
</html>