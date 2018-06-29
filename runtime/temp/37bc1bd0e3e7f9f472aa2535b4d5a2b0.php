<?php /*a:1:{s:40:"../html_template/admin/verify/index.html";i:1529978290;}*/ ?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui.form小例子</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body>
<h1 style="font-size: 20px;text-align: center;line-height: 50px;">生成口令</h1>
<form class="layui-form" method="post" action=""> <!-- 提示：如果你不想用form，你可以换成div等任何一个普通元素 -->

    <div class="layui-form-item">
        <label class="layui-form-label">个人识别码</label>
        <div class="layui-input-block">
            <input type="text" name="kouling" required lay-verify="required|kouling"  placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <!--<div class="layui-form-item">-->
        <!--<label class="layui-form-label">复选框</label>-->
        <!--<div class="layui-input-block">-->
            <!--<input type="checkbox" name="like[write]" title="写作">-->
            <!--<input type="checkbox" name="like[read]" title="阅读">-->
        <!--</div>-->
    <!--</div>-->
    <!--<div class="layui-form-item">-->
        <!--<label class="layui-form-label">开关关</label>-->
        <!--<div class="layui-input-block">-->
            <!--<input type="checkbox" lay-skin="switch">-->
        <!--</div>-->
    <!--</div>-->
    <div class="layui-form-item">
        <label class="layui-form-label">是否打开</label>
        <div class="layui-input-block">

            <input id="zt" name="zt" type="checkbox" lay-skin="switch" lay-filter="zt" lay-text="ON|OFF" checked value="1"/>

        </div>
    </div>
    <!--<div class="layui-form-item">-->
        <!--<label class="layui-form-label">单选框</label>-->
        <!--<div class="layui-input-block">-->
            <!--<input type="radio" name="sex" value="0" title="男">-->
            <!--<input type="radio" name="sex" value="1" title="女" checked>-->
        <!--</div>-->
    <!--</div>-->
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">请填写描述</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" lay-verify="required|beizhu"  required class="layui-textarea" name="beizhu"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn"  lay-filter="sub" name="sub" lay-submit="">生成</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
    <!-- 更多表单结构排版请移步文档左侧【页面元素-表单】一项阅览 -->
</form>
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/index.js"></script>
<script>
    layui.use('form', function(){
        var form = layui.form(), $ = layui.jquery;
        // 登录表单验证
        form.verify({
            kouling: function (value) {
                if (value == "") {
                    return "请输入口令";
                }
            },
            beizhu: function (value) {
                if (value == "") {
                    return "请输入备注";
                }
            }

        });

        form.on('submit(sub)', function (data) {
            // 提交到方法 默认为本身
            $.post("<?php echo url('admin/Verify/index'); ?>",data.field,function(res){
                // 判断是否成功

                if(res.status > 0){
                    // 添加成功跳转
                    layer.msg(res.msg,{time:1800},function(){
                        // 关闭父窗口

                        // 跳转
                        window.location.href = "<?php echo url('admin/Verify/index'); ?>";
                    })
                }else{
                    // 失败则提示
                     layer.msg(res.msg);
                   // console.log(res.msg);
                }
            });
            return false;
        });
        //各种基于事件的操作，下面会有进一步介绍
    });

</script>
</body>
</html>