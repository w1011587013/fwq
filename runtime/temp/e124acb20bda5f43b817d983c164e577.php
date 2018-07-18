<?php /*a:1:{s:42:"../html_template/admin/system/gonggao.html";i:1531821549;}*/ ?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>公告</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/iconfont.css" />
    <link rel="icon" href="/static/admin/image/code.png">
    <!--<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">-->
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
        .top_box{
            padding-top:30px;
        }
        .ucont{
            display: flex;
            display: -webkit-flex; /* Safari */
            flex-wrap: wrap;
            flex-direction:column;
            justify-content:space-between;
            margin-bottom: 15px;
            height: 260px;
        }
        .ip{
            font-size:36px;
        }
        .ucont .ip_tp,.ucont .ip_bt{
            line-height: 35px;

        }
        .ucont .ip_tp{
            padding-left:10px;
            font-size:14px;
        }
        .ucont .ip_bt{
            padding-right: 20px;
        }
        .iconfont{
            font-size: 30px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row top_box">
        <div class="col-md-3 col-xs-6">
            <div class="ucont bg-warning text-warning">
                <small class="ip_tp">收录使用P图软件IP次数</small>
                <div class="text-center ip">21640次</div>
                <div class="text-right ip_bt">  <span class="icon iconfont icon-77"></span></div>
            </div>
        </div>
        <div class="col-md-3 col-xs-6">
            <div class="ucont bg-success text-success">
                <small class="ip_tp">收录使用P图软件IP次数</small>
                <div class="text-center ip">21640次</div>
                <div class="text-right ip_bt">  <span class="icon iconfont icon-77"></span></div>
            </div>
        </div>
        <div class="col-md-3 col-xs-6">
            <div class="ucont bg-info text-info">
                <small class="ip_tp">收录使用P图软件IP次数</small>
                <div class="text-center ip" style="color:#2B2E37;">21640次</div>
                <div class="text-right ip_bt">  <span class="icon iconfont icon-77"></span></div>
            </div>
        </div>
        <div class="col-md-3 col-xs-6">
            <div class="ucont bg-danger text-danger">
                <small class="ip_tp">收录使用P图软件IP次数</small>
                <div class="text-center ip">21640次</div>
                <div class="text-right ip_bt">  <span class="icon iconfont icon-77"></span></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/index.js"></script>
<script>
   layui.use('layer', function(){
  var layer = layui.layer;
     layer.config({
  extend: 'myskin/style.css', //加载新皮肤
  skin: 'myskin1' //一旦设定，所有弹层风格都采用此主题。
});
//   layer.open({
//     title:'系统公告',
//   type: 1,
//     area: ['500px', '300px'],
//   content: '111' //这里content是一个普通的String
// });
});              

</script>
</body>
</html>