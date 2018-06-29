<?php /*a:1:{s:50:"../html_template/admin/system/auth_allocation.html";i:1493729558;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>权限分配</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body>

<!--<fieldset class="layui-elem-field layui-field-title">
    <legend>
        <span class="layui-breadcrumb">
            <a href="javascript:;">系统管理</a>
            <a><cite>权限分配</cite></a>
        </span>
    </legend>
</fieldset>-->

<!-- tree table -->
<div class="my-tree-table-box">
    <!-- tree and table -->
    <ul id="tree" class="tree-table-tree-box">
    </ul><div class="tree-table-table-box">
        <!-- table -->
        <table id="dateTable" class="layui-table layui-form">
            <thead>
            <tr>
                <th style="width: 130px;">菜单</th>
                <th style="width: auto;">定位</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody></tbody>
        </table>
    </div>
</div>



<!-- jQuery -->
<script type="text/javascript" charset="utf8" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/table-tool.js"></script>
<script type="text/javascript">
    layui.use(['tree','form','element','layer'], function() {
        var $ = layui.jquery,element = layui.element,layer = layui.layer,form = layui.form(),aid = 1;

        // 初始化表格
        var table = $('#dateTable').DataTable({
            "dom": '<"top">rt<"bottom"flp><"clear">',
            //"scrollY": 400,                         // 固定高
            "autoWidth": false,                     // 自适应宽度
            "stateSave": true,                      // 刷新后保存页数
            "order": false,
            "searching": false,                     // 本地搜索
            "info": true,                           // 控制是否显示表格左下角的信息
            "stripeClasses": ["odd", "even"],       // 为奇偶行加上样式，兼容不支持CSS伪类的场合
            "aoColumnDefs": [{                      // 指定列不参与排序
                "orderable": false,
                "aTargets": [2]                     // 对应你的表格的列数
            }],
            "pagingType": "simple_numbers",         // 分页样式 simple,simple_numbers,full,full_numbers
            "language": {                           // 国际化
                "url": '/static/admin/js/language.json'
            },
            "ajax": {
                "url": "<?php echo url(''); ?>"                // ajax
                //"data": {id:1}                      // 可默认
            },
            "deferRender": true,                    // 当处理大数据时，延迟渲染数据，有效提高Datatables处理能力
            "sServerMethod" : "POST",               // POST
            "columns": [                            // 自定义数据列
                {data: 'name'},
                {data: function(obj){
                    if(obj.url){
                        return obj.url;
                    }else{
                        return '-';
                    }
                },width:200},
                {data:function(obj){
                    if(obj.status > 0){
                        return '<input type="checkbox" checked name="open" lay-skin="switch" data-id="'+obj.id+'" data-status="'+obj.status+'" lay-filter="status" title="开关" lay-text="ON|OFF" />';
                    }else{
                        return '<input type="checkbox" name="open" lay-skin="switch" data-id="'+obj.id+'" data-status="'+obj.status+'" lay-filter="status" title="开关" lay-text="ON|OFF" />';
                    }
                },width:'24'}
            ],
            "stateSaveParams": function () {           // 初始化完成调用事件
                // 重新渲染form checkbox
                form.render('checkbox');
            }
        });

        // 请求树接口
        $.post("<?php echo url('treeJson'); ?>",{},function(res){
            // 树 更多操作请查看 http://www.layui.com/demo/tree.html
            layui.tree({
                elem: '#tree' // 传入元素选择器
                ,click: function(item){ // 点击节点回调
                    // 修改父级标题
                    parent.layer.title('权限分配-'+item.name, parent.layer.getFrameIndex(window.name));
                    var loadIndex = layer.load(2, {shade: false});
                    // 关闭加载
                    layer.close(loadIndex);
                    // 带参数重新初始化表格
                    table.settings()[0].ajax.data = item;
                    table.ajax.reload();
                    // 设置权限组ID
                    aid = item.id;
                }
                ,skin: 'my-tree'
                ,nodes: res
            });
            // 修改图标和默认选中
            var elem = $('.layui-tree-skin-my-tree');
            elem.find('li i').html('&#xe612;');
            //elem.find('li:first-child').attr('class','active');
        });

        //监听状态开关显示隐藏
        form.on('switch(status)', function(data){
            //layer.msg('状态:'+ (this.checked ? 'ON' : 'OFF'));
            // 获取id
            var rid = $(this).attr('data-id');
            // 获取状态
            var status = this.checked?1:0;
            // 请求显示或隐藏
            $.post("<?php echo url('status'); ?>",{aid:aid,rid:rid,status:status},function(res){
                layer.msg(res.msg,{time:1800});
            });
        });

        // 监听树列表点击事件
        /*$(document).on('click','#tree li', function(){
            alert($(this));
            $(this).parent().find('li').removeClass('active');
            $(this).attr('class','active')
        })*/


    });
</script>
</body>
</html>