<?php /*a:1:{s:42:"../html_template/admin/system/gonggao.html";i:1530180322;}*/ ?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>公告</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body>
<fieldset class="layui-elem-field">
  <legend><?php echo htmlentities($web['title']); ?></legend>
  <div class="layui-field-box">
    <?php echo htmlentities($web['cont']); ?>
  </div>
</fieldset>
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
  layer.open({
    title:'系统公告',
  type: 1,
    area: ['500px', '300px'],
  content: '<?php echo htmlentities($gonggao); ?>' //这里content是一个普通的String
});
});              

</script>
</body>
</html>