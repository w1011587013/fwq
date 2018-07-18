<?php /*a:1:{s:40:"../html_template/admin/system/index.html";i:1490064840;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>基本信息</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!--<fieldset class="layui-elem-field layui-field-title">
    <legend>
        <span class="layui-breadcrumb">
            <a href="javascript:;">系统配置</a>
            <a><cite>基本信息</cite></a>
        </span>
    </legend>
</fieldset>-->

<div class="layui-collapse" lay-accordion="" lay-filter="collapse">
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">服务器信息</h2>
        <div class="layui-colla-content layui-show">
            <table class="layui-table">
                <tr>
                    <td width="30%">服务器域名</td>
                    <td width="70%"><?php echo htmlentities($server['HTTP_HOST']); ?></td>
                </tr>
                <tr>
                    <td>服务器标识</td>
                    <td><?php echo @php_uname();?></td>
                </tr>
                <tr>
                    <td>服务器操作系统</td>
                    <td><?php echo PHP_OS;?></td>
                </tr>
                <tr>
                    <td>服务器解译引擎</td>
                    <td><?php echo htmlentities($server['SERVER_SOFTWARE']); ?></td>
                </tr>
                <tr>
                    <td>服务器语言</td>
                    <td><?php echo htmlentities($server['HTTP_ACCEPT_LANGUAGE']); ?></td>
                </tr>
                <tr>
                    <td>服务器端口</td>
                    <td><?php echo htmlentities($server['SERVER_PORT']); ?></td>
                </tr>
                <tr>
                    <td>服务器主机名</td>
                    <td><?php echo htmlentities(gethostbyaddr($server['REMOTE_ADDR'])); ?></td>
                </tr>
                <tr>
                    <td>站点名称</td>
                    <td><?php echo htmlentities($config['title']); ?></td>
                </tr>
                <tr>
                    <td>目录物理路径</td>
                    <td><?php echo htmlentities($server['DOCUMENT_ROOT']); ?></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">数据库信息</h2>
        <div class="layui-colla-content">
            <table class="layui-table">
                <tr>
                    <td width="30%">数据库版本</td>
                    <td width="70%"><?php echo htmlentities($mysql_version); ?></td>
                </tr>
                <tr>
                    <td>数据库名称</td>
                    <td><?php echo htmlentities($mysql_name); ?></td>
                </tr>
                <tr>
                    <td>数据库大小</td>
                    <td><?php echo htmlentities($mysql_size); ?></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">软件信息</h2>
        <div class="layui-colla-content">
            <table class="layui-table">
                <tr>
                    <td width="30%">软件名称</td>
                    <td width="70%"><?php echo htmlentities($config['title']); ?></td>
                </tr>
                <tr>
                    <td>系统版本</td>
                    <td><?php echo htmlentities($config['version']); ?></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">PHP相关参数</h2>
        <div class="layui-colla-content">
            <table class="layui-table">
                <tr>
                    <td width="30%">PHP版本</td>
                    <td width="70%"><?php echo PHP_VERSION;?></td>
                </tr>
                <tr>
                    <td>上传文件最大限制</td>
                    <td><?php echo get_cfg_var("upload_max_filesize"); ?></td>
                </tr>
                <tr>
                    <td>脚本占用最大内存</td>
                    <td><?php echo get_cfg_var("memory_limit"); ?></td>
                </tr>
                <tr>
                    <td>POST提交最大限制</td>
                    <td><?php echo get_cfg_var("post_max_size"); ?></td>
                </tr>
            </table>
        </div>
    </div>
</div>

<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['layer','element'], function () {
        var layer = layui.layer, element = layui.element();

        //监听折叠
        element.on('collapse(collapse)', function(data){
            layer.msg('展开状态：'+ data.show);
        });

        // you code ...


    });
</script>
</body>
</html>