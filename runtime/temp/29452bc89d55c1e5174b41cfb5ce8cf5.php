<?php /*a:1:{s:39:"../html_template/index/index/index.html";i:1530002330;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title><?php echo htmlentities($webtitle); ?></title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style type="text/css">
        .hbox{
            text-align: center;padding-top:30px;
        }
        .hbtn{
            font-size: 25px;
            margin-top:20px;
            height: 50px;
            line-height: 35px;
        }
    </style>
</head>
<body>
<header><h1 style="text-align:center"><?php echo htmlentities($title); ?></h1></header>
<div class="container">
    <?php if(is_array($ubtn) || $ubtn instanceof \think\Collection || $ubtn instanceof \think\Paginator): $i = 0; $__LIST__ = $ubtn;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

    <a href="<?php echo htmlentities($vo['murl']); ?>" class="col-xs-12  btn <?php echo htmlentities($vo['mstyle']); ?> hbtn" >
        <span class="glyphicon <?php echo htmlentities($vo['micon']); ?>" aria-hidden="true"></span>
        <?php echo htmlentities($vo['mname']); ?></a>

    <?php endforeach; endif; else: echo "" ;endif; ?>
    <!--<a href="order.php" class="col-xs-12 btn btn-primary hbtn" >-->
        <!--<span class="glyphicon glyphicon-align-justify" aria-hidden="true"></span>-->
        <!--所有订单（第二张）-->
    <!--</a>-->

    <!--<a href="xy.php" class="col-xs-12 btn btn-success hbtn" >-->
        <!--<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span>-->
        <!--我的信誉（第三张）</a>-->

    <!--<a href="tj.php" class="col-xs-12 btn btn-warning hbtn" >-->
        <!--<span class="glyphicon glyphicon-search" aria-hidden="true"></span>看淘气值（第四张）</a>-->
    <!--<a href="tk.php" class="col-xs-12 btn btn-warning hbtn" >-->
        <!--<span class="glyphicon glyphicon-search" aria-hidden="true"></span>退款管理（第五张）</a>-->

    <!--<a href="xinyong.php" class="col-xs-12 btn btn-danger hbtn" >-->
        <!--<span class="glyphicon glyphicon-yen" aria-hidden="true"></span>-->
        <!--信用中心（第六张）</a>-->

</div>
<?php if(($msg != '')): ?>
<footer><h5 style="text-align:center;"><?php echo htmlentities($msg['end']); ?><?php echo htmlentities($msg['use']); ?></h5></footer>
<?php else: ?>
<footer></footer>
<?php endif; ?>
</body>
</html>