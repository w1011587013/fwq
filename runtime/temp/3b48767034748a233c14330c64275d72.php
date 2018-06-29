<?php /*a:1:{s:39:"../html_template/admin/login/index.html";i:1529917694;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body>

<div class="login-main">
    <header class="layui-elip"><?php echo htmlentities($config['title']); ?>&nbsp;<span class="version"><?php echo htmlentities($config['version']); ?></span></header>
    <form class="layui-form" method="post">
        <div class="layui-input-inline">
            <input type="text" name="account" required  lay-verify="required|account" placeholder="账号" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="password" name="password" required  lay-verify="required|password" placeholder="密码" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-input-inline verify-box">
            <input type="number" name="verify" required  lay-verify="required|verify" placeholder="验证码" autocomplete="off" class="layui-input"><img id="verify" src="<?php echo captcha_src(); ?>" alt="验证码" onclick="this.src = this.src+'?'" class="captcha">
        </div>
        <div class="layui-input-inline login-btn">
            <button type="button" class="layui-btn" lay-submit="" lay-filter="sub">登录</button>
        </div>
        <!--
        <hr/>
        <div class="layui-input-inline">
            <button type="button" class="layui-btn layui-btn-primary">QQ登录</button>
        </div>
        <div class="layui-input-inline">
            <button type="button" class="layui-btn layui-btn-normal">微信登录</button>
        </div>
        <p><a href="javascript:;" class="fl">立即注册</a><a href="javascript:;" class="fr">忘记密码？</a></p>
        -->
    </form>
</div>

<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script>
<script type="text/javascript">
    /* 解决登录页被嵌套问题js */
    var _topWin = window;
    while (_topWin != _topWin.parent.window) {
        _topWin = _topWin.parent.window;
    }
    if (window != _topWin)_topWin.document.location.href = "<?php echo url('login/index'); ?>";

    layui.use(['form'], function () {
        var form = layui.form(), $ = layui.jquery;

        // 登录表单验证
        form.verify({
            account: function (value) {
                if (value == "") {
                    return "请输入用户名";
                }
            },
            password: function (value) {
                if (value == "") {
                    return "请输入密码";
                }
            },
            verify: function (value) {
                if (value == "") {
                    return "请输入验证码";
                }
            }
        });

        // 登录提交监听
        form.on('submit(sub)', function (data) {
            // 提交到方法 默认为本身
            $.post("<?php echo url('admin/Login/index'); ?>",data.field,function(res){
                if(res.code > 0){
                    layer.msg(res.msg,{time:1800},function(){
                        location.href = "<?php echo url('admin/Index/index'); ?>";
                    });
                }else{
                    layer.msg(res.msg,{time:1800});
                    $('#verify').click();
                }
            });
            return false;
        });

    });
</script>
</body>
</html>