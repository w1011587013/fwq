<?php /*a:1:{s:41:"../html_template/admin/system/config.html";i:1490064870;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>后台配置</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!--<fieldset class="layui-elem-field layui-field-title">
    <legend>
        <span class="layui-breadcrumb">
            <a href="javascript:;">系统配置</a>
            <a><cite>后台配置</cite></a>
        </span>
    </legend>
</fieldset>-->

<form class="layui-form" action="" onclick="return false;"><!-- layui-form-pane -->
    <div class="layui-form-item">
        <label class="layui-form-label">软件名称</label>
        <div class="layui-input-block">
            <input type="text" name="title" placeholder="软件名称" lay-verify="required" class="layui-input" value="<?php echo !empty($title) ? htmlentities($title) : ''; ?>"/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">版本号</label>
        <div class="layui-input-block">
            <input type="text" name="version" placeholder="版本号" lay-verify="required" class="layui-input" value="<?php echo !empty($version) ? htmlentities($version) : ''; ?>"/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">版权信息</label>
        <div class="layui-input-block">
            <input type="text" name="copy" placeholder="版权信息" lay-verify="required" class="layui-input"  value="<?php echo !empty($copy) ? htmlentities($copy) : ''; ?>"/>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">ICP备案号</label>
        <div class="layui-input-block">
            <input type="text" name="icp" placeholder="ICP备案号" lay-verify="required" class="layui-input" value="<?php echo !empty($icp) ? htmlentities($icp) : ''; ?>"/>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">统计代码</label>
        <div class="layui-input-block">
            <textarea name="code" placeholder="统计代码" lay-verify="required" class="layui-textarea"><?php echo !empty($code) ? htmlentities($code) : ''; ?></textarea>
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
    layui.use(['form', 'layer','element'], function () {
        var form = layui.form(),element = layui.element(), layer = layui.layer,$ = layui.jquery;

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '软件名称至少得5个字符';
                }
            }
        });

        //监听提交
        form.on('submit(sub)', function (data) {
            /*layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            });*/
            $.post("<?php echo url(''); ?>",data.field,function(res){
                layer.msg(res.msg,{time:1800});
            });
            return false;
        });

        // you code ...


    });
</script>
</body>
</html>