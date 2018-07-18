<?php /*a:1:{s:40:"../html_template/admin/verify/index.html";i:1531906252;}*/ ?>
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
            <input type="text" name="kl" required lay-verify="required|kouling"  placeholder="请输入" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">是否打开</label>
        <div class="layui-input-block">

            <input id="zt" name="status" type="checkbox" lay-skin="switch" lay-filter="zt" lay-text="ON|OFF" checked value="1"/>

        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">自定义水印</label>
         <div class="layui-input-block">

               <input type="file"  lay-type="images" class="layui-upload-file" id=uimg>
             <input type="text" name="sydz" id="shuiyin"  placeholder="水印地址" autocomplete="off" readonly="readonly" class="layui-input">

         </div>
        
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label" id="jiance">检测选项</label>
        <input type="checkbox" name="menu[pj]" title="我的评价" lay-skin="primary" lay-filter="menu" checked value="1">
        <input type="checkbox" name="menu[dd]" title="所有订单" lay-skin="primary" lay-filter="menu"  checked value="2">
        <input type="checkbox" name="menu[xy]" title="我的信誉" lay-skin="primary" lay-filter="menu"  checked value="3">
        <input type="checkbox" name="menu[xx]" title="交易信息" lay-skin="primary" lay-filter="menu"  checked value="4">
        <input type="checkbox" name="menu[zx]" title="信用中心" lay-skin="primary" lay-filter="menu"  checked value="5">
        <input type="checkbox" name="menu[tk]" title="退款管理" lay-skin="primary" lay-filter="menu"  checked value="6">
        <input type="checkbox" name="menu[tj]" title="体检中心（无水印）" lay-skin="primary" lay-filter="menu"  checked value="7">

    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">同一IP扫描次数</label>
        <div class="layui-input-block">
            <input type="radio" name="ipnumber" value="1" title="1次">
            <input type="radio" name="ipnumber" value="2" title="2次">
            <input type="radio" name="ipnumber" value="3" title="3次" checked>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">最大IP扫描次数</label>
        <div class="layui-input-block">
            <input type="radio" name="maxnumber" value="18" title="18次">
            <input type="radio" name="maxnumber" value="30" title="30次" checked>
            <input type="radio" name="maxnumber" value="60" title="60次" >
            <input type="radio" name="maxnumber" value="90" title="90次" >
        </div>
    </div>
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

<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script>
<script>
    layui.use(['form','upload','layer'],function(){
        var form = layui.form(), $ = layui.jquery,layer = layui.layer;
        layui.upload({
            elem:'#uimg',
         url: "<?php echo url('shuiyin'); ?>",
          unwrap: false,
          method:'post',
         success: function(res){
           //  console.log(res); //上传成功返回值，必须为json格式
             layer.msg(res.msg,{time:'2000'});
             $('#shuiyin').val("/uploads/"+res.src);
             $('body').css("background","url('/uploads/"+res.src+"')");

            }

        });
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
        // form.on('checkbox(menu)', function(data){
        //     console.log(data.elem); //得到checkbox原始DOM对象
        //     console.log(data.elem.checked); //是否被选中，true或者false
        //
        // });

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
                    console.log(res.cont);
                }
            });
            return false;
        });
        //各种基于事件的操作，下面会有进一步介绍
    });

</script>
</body>
</html>