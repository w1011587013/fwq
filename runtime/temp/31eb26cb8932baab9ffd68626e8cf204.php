<?php /*a:1:{s:39:"../html_template/admin/index/index.html";i:1531789555;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title><?php echo htmlentities($config['title']); ?></title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body>
<!-- admin -->
<div class="layui-layout layui-layout-admin">
    <!-- header -->
    <div class="layui-header my-header">
        <a href="javascript:;">
            <!--<img class="my-header-logo" src="" alt="logo">-->
            <a href="<?php echo url('index'); ?>"><div class="my-header-logo"><?php echo htmlentities($config['title']); ?><span>&nbsp;<?php echo htmlentities($config['version']); ?></span></div></a>
        </a>
        <div class="my-header-btn">
            <button class="layui-btn layui-btn-small btn-nav"><i class="layui-icon">&#xe620;</i></button>
        </div>
        <!--<ul class="layui-nav" lay-filter="side-left">
            <li class="layui-nav-item"><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="layui-icon">&#xe621;</i>基础</a>
                <dl class="layui-nav-child">
                    <dd><a href="javascript:;" href-url="demo/btn.html"><i class="layui-icon">&#xe621;</i>按钮</a></dd>
                    <dd><a href="javascript:;" href-url="demo/form.html"><i class="layui-icon">&#xe621;</i>表单</a></dd>
                </dl>
            </li>
        </ul>-->
        <ul class="layui-nav my-header-user-nav" lay-filter="side-right">
          <li class="layui-nav-item">
                <a class="name" href="javascript:;"><i class="layui-icon">&#xe609;</i>网站首页</a>
                <dl class="layui-nav-child">
                    <dd><a href="<?php echo url('index/index/index'); ?>" target="_blank">前台首页</a></dd>
                    <dd><a href="<?php echo url('admin/index/index'); ?>" target="_blank">后台首页</a></dd>
               
                </dl>
            </li>
            <li class="layui-nav-item">
                <a class="name" href="javascript:;"><i class="layui-icon">&#xe629;</i>主题</a>
                <dl class="layui-nav-child">
                    <dd data-skin="0"><a href="javascript:;">默认</a></dd>
                    <dd data-skin="1"><a href="javascript:;">纯白</a></dd>
                    <dd data-skin="2"><a href="javascript:;">蓝白</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" class="name"><!--<img src="/static/admin/image/header.jpg" alt="logo">--><i class="layui-icon">&#xe60c;</i> <?php echo session('vip_admin.account'); ?> </a>
                <dl class="layui-nav-child">
                    <dd><a href="<?php echo url('login/out'); ?>"><i class="layui-icon">&#xe609;</i>登出</a></dd>
                </dl>
            </li>
        </ul>
    </div>
    <!-- side -->
    <div class="layui-side my-side">
        <ul class="layui-nav layui-nav-tree" lay-filter="side">
            <?php if(is_array($menu) || $menu instanceof \think\Collection || $menu instanceof \think\Paginator): $i = 0; $__LIST__ = $menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="layui-icon">&<?php echo htmlentities($vo['icon']); ?></i><?php echo htmlentities($vo['name']); ?></a>
                <?php if(isset($vo['children'])): ?>
                <dl class="layui-nav-child">
                    <?php if(is_array($vo['children']) || $vo['children'] instanceof \think\Collection || $vo['children'] instanceof \think\Paginator): $i = 0; $__LIST__ = $vo['children'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vv): $mod = ($i % 2 );++$i;?>
                    <dd><a href="javascript:;" href-url="<?php echo url($vv['url']); ?>"><i class="layui-icon">&<?php echo htmlentities($vv['icon']); ?></i><?php echo htmlentities($vv['name']); ?></a></dd>
                    <?php endforeach; endif; else: echo "" ;endif; ?>
                </dl>
                <?php endif; ?>
            </li>
            <?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
    </div>
    <!-- body -->
    <div class="layui-body my-body">
        <div class="layui-tab layui-tab-card my-tab" lay-filter="card" lay-allowClose="true">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="0"><span>欢迎页</span></li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe id="iframe" src="<?php echo url('System/gonggao'); ?>" frameborder="0"></iframe>
                    \
            </div>
        </div>
    </div>
    <!-- footer -->
    <div class="layui-footer my-footer">
        <p><a href="http://www.vlezhu.com" target="_blank">LEUI-admin</a>&nbsp;&nbsp;&&nbsp;&nbsp;<a href="http://www.vlezhu.com" target="_blank"><?php echo htmlentities($config['title']); ?><?php echo htmlentities($config['version']); ?></a></p>
        <p><?php echo htmlentities($config['copy']); ?> & <?php echo htmlentities($config['icp']); ?></p>
    </div>
</div>

<?php echo htmlentities($config['code']); ?>

<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/index.js"></script>
</body>
</html>