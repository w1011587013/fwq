<?php /*a:1:{s:36:"../html_template/admin/nav/edit.html";i:1529918460;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>修改菜单</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!-- 修改 form -->
<form class="layui-form edit-form" action="">
    <div class="layui-form-item">
        <label class="layui-form-label">父级菜单</label>
        <div class="layui-input-inline">
            <select name="pid" lay-verify="required" lay-search>
                <option value="0">顶级</option>
                <?php foreach($menu as $list): if($list['id'] != $info['id']): if($list['id'] == $info['pid']): ?>
                <option selected="" value="<?php echo htmlentities($list['id']); ?>"><?php echo htmlentities($list['name']); ?></option>
                <?php else: ?>
                <option value="<?php echo htmlentities($list['id']); ?>"><?php echo htmlentities($list['name']); ?></option>
                <?php endif; endif; endforeach; ?>
            </select>
        </div>
        <div class="layui-form-mid layui-word-aux">必须 注:这里只限制了两级菜单</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单名称</label>
        <div class="layui-input-inline">
            <input name="name" type="text" required="" lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input" value="<?php echo !empty($info['name']) ? htmlentities($info['name']) : ''; ?>" />
        </div>
        <div class="layui-form-mid layui-word-aux">必须</div>
        <div class="layui-input-inline">
        <?php if($info['status'] == '1'): ?>
            <input name="status" type="checkbox" checked lay-skin="switch" lay-filter="switch-status" lay-text="ON|OFF" value="<?php echo htmlentities($info['status']); ?>" />
        <?php else: ?>
            <input name="status" type="checkbox" lay-skin="switch" lay-filter="switch-status" lay-text="ON|OFF" />
        <?php endif; ?>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单图标</label>
        <div class="layui-input-inline">
            <input name="icon" type="text" placeholder="请输入图标" autocomplete="off" class="layui-input" value="<?php echo !empty($info['icon']) ? htmlentities($info['icon']) : ''; ?>" />
        </div>
        <div class="layui-form-mid layui-word-aux">非必填&nbsp;&nbsp;例如: <span class="code"> "#xe621;" <span class="red">注：前面没有 "&"</span> </span></div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单定位</label>
        <div class="layui-input-inline">
            <input name="url" type="text" required="" lay-verify="required" placeholder="请输入定位" autocomplete="off" class="layui-input" value="<?php echo !empty($info['url']) ? htmlentities($info['url']) : ''; ?>" />
        </div>
        <div class="layui-form-mid layui-word-aux">必须&nbsp;&nbsp;例如:admin/System/index</div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">菜单排序</label>
        <div class="layui-input-inline">
            <input name="order" type="number" placeholder="请输入排序" autocomplete="off" class="layui-input" value="<?php echo !empty($info['order']) ? htmlentities($info['order']) : ''; ?>" />
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="id" type="hidden" value="<?php echo htmlentities($info['id']); ?>"/>
            <button type="button" class="layui-btn" lay-submit="" lay-filter="edit-menu">提交</button>
        </div>
    </div>
</form>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js" charset="utf8"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" charset="utf8"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/table-tool.js"></script>
<script type="text/javascript">
    layui.use(['element','layer','form'], function(){
        var $ = layui.jquery,element = layui.element,layer = layui.layer,form = layui.form();

        // 监听添加菜单表单时状态开关
        form.on('switch(switch-status)', function(data){
            // 设置状态
            $(this).val(this.checked?1:0);
        });

        // 添加菜单
        form.on('submit(edit-menu)', function(data){
            // POST请求
            $.post("<?php echo url('edit'); ?>",data.field, function(res){
                if(res.status > 0){
                    layer.msg(res.msg,{time:1800},function(){
                        // 关闭父级弹窗
                        parent.layer.closeAll();
                        // 父级刷新
                        parent.location.href = "<?php echo url('index'); ?>";
                    });
                }
                layer.msg(res.msg);
            });
            // 阻止提交
            return false;
        });


    });
</script>
</body>
</html>