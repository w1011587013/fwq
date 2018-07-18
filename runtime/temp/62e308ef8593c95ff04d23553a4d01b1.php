<?php /*a:1:{s:43:"../html_template/admin/verify/klresult.html";i:1531734146;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Data-Table 表格</title>
    <!--<link rel="stylesheet" href="http://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">-->
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!--<fieldset class="layui-elem-field layui-field-title">
    <legend>
        <span class="layui-breadcrumb">
            <a href="javascript:;">用户管理</a>
            <a><cite>系统用户</cite></a>
        </span>
    </legend>
</fieldset>-->

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">扫码结果管理</li>
        <!--<li>账号信息</li>-->
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">

            <div class="my-btn-box">
                <span class="fl">
                    <a class="layui-btn layui-btn-danger radius btn-delect" id="btn-delete-all">批量删除</a>
                    <!--<a class="layui-btn btn-add btn-default" id="btn-add-article">发布文章</a>-->
                </span>
                <span class="fl">
                    <a class="layui-btn radius btn-flush" id="btn-delete-flush"> <i class="layui-icon">&#x1002;</i>刷新页面</a>
                    <!--<a class="layui-btn btn-add btn-default" id="btn-add-article">发布文章</a>-->
                </span>
                <form class="fr layui-form">
                    <span class="layui-form-label">查询字段：</span>
                    <div class="layui-input-inline">
                        <input name="search" type="text" autocomplete="off" placeholder="查询字段" class="layui-input" />
                    </div>
                    <button type="button" class="layui-btn mgl-20" lay-submit="" lay-filter="search">查询</button>
                </form>
            </div>

            <table id="dateTable" class="layui-table layui-form">
                <thead>
                <tr>
                    <th><input type="checkbox" lay-skin="primary" lay-filter="allChoose" /></th>
                    <th>口令码</th>

                    <th>扫描时间</th>
                    <th>扫描IP</th>

                    <th>扫描结果</th>

                    <th>状态</th>
                    <th>标记</th>
                    <th>反馈</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody></tbody>
            </table>

        </div>
       <!-- <div class="layui-tab-item">-->
            <!-- 添加系统账号 -->
            <!--<form class="layui-form" action="">-->
            <!--<div class="layui-form-item">-->
            <!--<label class="layui-form-label">系统账号</label>-->
            <!--<div class="layui-input-inline">-->
            <!--<input name="account" type="text" lay-verify="title|required" autocomplete="off" placeholder="请输入账号" class="layui-input">-->
            <!--</div>-->
            <!--</div>-->
            <!--<div class="layui-form-item">-->
            <!--<label class="layui-form-label">输入密码</label>-->
            <!--<div class="layui-input-inline">-->
            <!--<input name="password" type="password" lay-verify="title|required" autocomplete="off" placeholder="请输入密码" class="layui-input">-->
            <!--</div>-->
            <!--</div>-->
            <!--<div class="layui-form-item">-->
            <!--<label class="layui-form-label">重复密码</label>-->
            <!--<div class="layui-input-inline">-->
            <!--<input name="re_password" type="password" lay-verify="title|required" autocomplete="off" placeholder="请重复输入" class="layui-input">-->
            <!--</div>-->
            <!--</div>-->
            <!--<div class="layui-form-item">-->
            <!--<label class="layui-form-label">所属权限组</label>-->
            <!--<div class="layui-input-inline">-->

            <!--</div>-->
            <!--</div>-->
            <!--<div class="layui-form-item">-->
            <!--<label class="layui-form-label">状态</label>-->
            <!--<div class="layui-input-inline">-->
            <!--<input name="status" type="checkbox" lay-skin="switch" lay-filter="switch-status" lay-text="ON|OFF" checked value="1" />-->
            <!--</div>-->
            <!--</div>-->
            <!--<div class="layui-form-item">-->
            <!--<div class="layui-input-block">-->
            <!--<button type="button" class="layui-btn" lay-submit="" lay-filter="add">添加</button>-->
            <!--</div>-->
            <!--</div>-->
            <!--</form>-->

        <!--</div>-->
    </div>
</div>

<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/table-tool.js"></script>
<script type="text/javascript">
    layui.use(['element','layer','form'], function(){
        var $ = layui.jquery,element = layui.element,layer = layui.layer,form = layui.form();

        // 初始化表格
        var table = $('#dateTable').DataTable({
            "dom": '<"top">rt<"bottom"flp><"clear">',
            "autoWidth": false,                     // 自适应宽度
            "stateSave": true,                      // 刷新后保存页数
            "order": [[ 2, "desc" ]],               // 排序
            "searching": false,                     // 本地搜索
            "info": true,                           // 控制是否显示表格左下角的信息
            "stripeClasses": ["odd", "even"],       // 为奇偶行加上样式，兼容不支持CSS伪类的场合
            "aoColumnDefs": [{                      // 指定列不参与排序
                "orderable": false,
                "aTargets": [0,6]                   // 对应你的表格的列数
            }],
            "pagingType": "simple_numbers",         // 分页样式 simple,simple_numbers,full,full_numbers
            "language": {                           // 国际化
                "url":'/static/admin/js/language.json'
            },
            "ajax": {
                "url": "<?php echo url(''); ?>"                // ajax
            },
            "sServerMethod" : "POST",               // POST
            "deferRender": true,                    // 当处理大数据时，延迟渲染数据，有效提高Datatables处理能力
            "columns": [                            // 自定义数据列
                {data:function(obj){                // 后台需要返回[data=>['id'=>1,ip=>0.0.0.0]]这样的数据
                        return '<input type="checkbox" lay-skin="primary" data-id="'+obj.id+'" lay-filter="oneChoose" />';
                    }},
                {data: 'kl'},
                {data: 'smtime'},
                {data: function(obj){
                        if(obj.biaoji==0) {
                            return '<span>'+obj.smip+'</span>';
                        }
                        else{
                            return '<span style="color:#1E9FFF">'+obj.smip+'</span>';
                        }
                    },width:'44'},
                {data: 'smresult'},
                {data: 'ci'},
                {data: function(obj){
                        if(obj.biaoji==0) {
                            return '<a class="layui-btn layui-btn-small layui-btn-warm btn-bj" data-id="' + obj.klid + '"  data-ip="'+obj.smip+'">标记</a>';
                        }
                        else{
                            return '<a class="layui-btn layui-btn-small  btn-ybj" data-id="' + obj.klid + '" data-ip="'+obj.smip+'">已标记</a>';
                        }
                    },width:'44'},
                {data: function(obj){
                        if(obj.jubao==0){
                            return  '<a class="layui-btn layui-btn-small layui-btn-danger btn-jb" data-id="'+obj.klid+'" data-ip="'+obj.smip+'">举报</a>';
                        }else{
                            return  '<a class="layui-btn layui-btn-small  btn-yjb" data-id="'+obj.klid+'" data-ip="'+obj.smip+'">已举报</a>';
                        }
                        },width:'44'},
                {data: function(obj){
                        return  '<a class="layui-btn layui-btn-small layui-btn-normal btn-edit" data-id="'+obj.sid+'">二维码</a>';
                    },width:'44'}
            ],
            "stateSaveParams": function () {           // 初始化完成调用事件
                // 重新渲染form checkbox
                form.render('checkbox');
            }
        });


        // 批量删除
        $(document).on('click','#btn-delete-all', function(){
            // getIds(table对象,获取input为id的属性)
            var ids = getIds($('#dateTable'),'data-id');
            if(ids == null || ids == ''){
                layer.msg('未选择');
            }else{
                deleteAll(ids,"<?php echo url('jgdelete'); ?>","<?php echo url('klresult'); ?>","<?php echo url('klresult'); ?>");
            }
        });
        $(document).on('click','#btn-delete-flush', function(){
            // getIds(table对象,获取input为id的属性)
            layer.msg('刷新成功',{time:500},function(){
                // 关闭父窗口

                // 跳转
                window.location.href = "<?php echo url('admin/Verify/klresult'); ?>";
            })
        });
        // 监听搜索按钮
        form.on('submit(search)', function(data){
            // 带参数重新初始化表格
            table.settings()[0].ajax.data = data.field;
            table.ajax.reload();
        });

        // 监听指定开关
        form.on('switch(status)', function(data){
            // 获取id
            var id = $(this).attr('data-id');
            // 获取状态
            var status = this.checked?1:0;
            // 请求显示或隐藏
            $.post("<?php echo url('klStatus'); ?>",{id:id,status:status},function(res){
                layer.msg(res.msg);
            });
        });

        // 全选和反选
        form.on('checkbox(allChoose)', function(data){
            var child = $(data.elem).parents('table').find('tbody tr td:first-child input[type="checkbox"]');
            child.each(function(index, item){
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });

        // 单选
        form.on('checkbox(oneChoose)', function(data){
            var tr = $(this).parents();
            if(this.checked){
                tr.addClass('selected');
            }else{
                tr.removeClass('selected');
            }
            form.render('checkbox');
        });

        // 编辑
        $(document).on('click','.btn-edit', function(){
            // 弹窗
            layer.open({
                type: 2,
                title: '二维码生成',
                shadeClose: true,
                shade: 0.8,
                area: ['400px', '500px'],
                content: "<?php echo url('editKl'); ?>?sid="+$(this).attr('data-id')
            });
            // 更新渲染
            form.render();
        });
        $(document).on('click','.btn-bj', function(){
            // 弹窗
            layer.open({
                type: 2,
                title: '标记',
                shadeClose: true,
                shade: 0.8,
                area: ['400px', '500px'],
                content: "<?php echo url('Blacklist/biaoji'); ?>?klid="+$(this).attr('data-id')+"&ip="+$(this).attr('data-ip'),
                end: function () {
                    location.reload();
                }
            });
            // 更新渲染
            form.render();
        });
        $(document).on('click','.btn-ybj', function(){
            // 弹窗
            layer.open({
                type: 2,
                title: '标记',
                shadeClose: true,
                shade: 0.8,
                area: ['400px', '500px'],
                content: "<?php echo url('Blacklist/bjedit'); ?>?klid="+$(this).attr('data-id')+"&ip="+$(this).attr('data-ip'),

            });
            // 更新渲染
            form.render();
        });
        $(document).on('click','.btn-jb', function(){
            // 弹窗
            layer.open({
                type: 2,
                title: '举报反馈',
                shadeClose: true,
                shade: 0.8,
                area: ['400px', '500px'],
                content: "<?php echo url('Blacklist/add'); ?>?klid="+$(this).attr('data-id')+"&ip="+$(this).attr('data-ip'),
                end: function () {
                    location.reload();
                }
            });
            // 更新渲染
            form.render();
        });
        $(document).on('click','.btn-yjb', function(){
            // 弹窗
            layer.open({
                type: 2,
                title: '查看举报信息',
                shadeClose: true,
                shade: 0.8,
                area: ['400px', '500px'],
                content: "<?php echo url('Blacklist/jbedit'); ?>?klid="+$(this).attr('data-id')+"&ip="+$(this).attr('data-ip'),

            });
            // 更新渲染
            form.render();
        });
        // 添加系统用户


    });
</script>
</body>
</html>