<?php /*a:1:{s:44:"../html_template/admin/system_user/edit.html";i:1490062476;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Data-Table 表格</title>
    <!--<link rel="stylesheet" href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">-->
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<form class="layui-form edit-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">系统账号</label>
        <div class="layui-input-inline">
            <input name="account" type="text" lay-verify="required" autocomplete="off" placeholder="请输入账号" class="layui-input" value="<?php echo !empty($data['account']) ? htmlentities($data['account']) : ''; ?>" />
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">所属权限组</label>
        <div class="layui-input-inline">
            <select name="gid" lay-search>
                <?php foreach($authGroup as $v): if($v['id'] == $data['gid']): ?>
                <option value="<?php echo htmlentities($v['id']); ?>" selected=""><?php echo htmlentities($v['title']); ?></option>
                <?php else: ?>
                <option value="<?php echo htmlentities($v['id']); ?>"><?php echo htmlentities($v['title']); ?></option>
                <?php endif; endforeach; ?>
            </select>
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
            <input name="id" type="hidden" value="<?php echo htmlentities($data['id']); ?>">
            <button type="button" class="layui-btn" lay-submit="" lay-filter="edit">提交</button>
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

        //监听指定开关
        form.on('switch(status)', function(data){
            /*console.log(data);
            layer.msg('状态:'+ (this.checked ? 'ON' : 'OFF'), {
                offset: '6px'
            });*/
            // 获取id
            var id = $(this).attr('data-id');
            // 获取状态
            var status = this.checked?1:0;
            // 请求显示或隐藏
            $.post("<?php echo url('systemUserStatus'); ?>",{id:id,status:status},function(res){
                layer.msg(res.msg);
            });
        });

        // 添加系统用户
        form.on('submit(edit)', function(data){
            console.log(data.field);
            // 请求
            $.post("<?php echo url('edit'); ?>",data.field,function(res){
                // 判断是否成功
                if(res.status > 0){
                    // 添加成功跳转
                    layer.msg(res.msg,{time:1800},function(){
                        // 关闭父窗口
                        parent.layer.closeAll();
                        // 跳转
                        parent.location.href = "<?php echo url('index'); ?>";
                    })
                }else{
                    // 失败则提示
                    layer.msg(res.msg);
                }
            });
            return false;
        })

    });
</script>
</body>
</html>