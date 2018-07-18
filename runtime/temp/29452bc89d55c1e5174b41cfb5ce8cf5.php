<?php /*a:1:{s:39:"../html_template/index/index/index.html";i:1531904887;}*/ ?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta name="renderer" content="webkit">
    <title>极速验号系统</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <style type="text/css">
        body{
            height: 100%;
            font-family: "微软雅黑";
        }
        .allbox{
            height: 100%;
            text-align: center;padding-top:15%;
        }
        .hbtn{
            font-size: 25px;
            margin-top:20px;
            height: 50px;
            line-height: 35px;
            align-items:center;
        }
        .logobox{
            display: flex;
            flex-wrap: wrap;
            justify-content:center;
        }
        .logo{
                margin:10% 0;
        }
        .wx-text{
          color: #fff;
          font-size: 16px;
          line-height: 30px;
        }
    </style>
</head>
<body style="background:url('/static/index/img/bg.jpeg');">

<div class="container allbox" >

   <div class="row logobox">
       <div class="col-xs-4 col-md-4 ">
           <img src="/static/index/img/ma.png" class="img-responsive center-block">
           <p class="wx-text">微信二维码</p>
       </div>
       <div class="logo col-xs-10 col-md-10 ">
           <img src="/static/index/img/logo.png" class="img-responsive center-block">
       </div>
       <a href="<?php echo url('yz'); ?>" class="col-xs-5" >
           <img src="/static/index/img/yhbtn.png" class="img-responsive center-block">
       </a>

   </div>
 <?php if(($msg != '')): ?>
    <a href="<?php echo url('yz'); ?>" class="col-xs-12 btn btn-primary hbtn" >    
        点击进入验号流程（感谢配合）
    </a>
<?php else: endif; ?>


</div>
<?php if(($msg != '')): ?>
<footer><h5 style="text-align:center;"><?php echo htmlentities($msg['use']); ?></h5></footer>
<?php else: ?>
<footer></footer>
<?php endif; ?>
</body>
</html>