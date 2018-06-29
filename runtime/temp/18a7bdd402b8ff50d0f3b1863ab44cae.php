<?php /*a:1:{s:39:"../html_template/admin/public/tips.html";i:1488348960;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>提示页面</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body>

<div class="my-page-box">
    <i class="layui-icon">&#xe60c;</i>
    <p class="msg">友情提示</p>
    <p class="text"><?php echo htmlentities($msg); ?></p>
    <!--<div class="my-btn-box">
        <a class="layui-btn layui-btn-small" href="javascript:;">返回首页</a>
        <a class="layui-btn layui-btn-danger layui-btn-small " href="javascript:;">返回上页</a>
    </div>-->
</div>


<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script>
<script type="text/javascript">

</script>
</body>
</html>