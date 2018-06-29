<?php /*a:1:{s:37:"../html_template/admin/nav/index.html";i:1493730082;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>菜单列表</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/frame/layui/css/layui.css" /><link rel="stylesheet" type="text/css" href="/static/admin/css/style.css" />
    <link rel="icon" href="/static/admin/image/code.png">
</head>
<body class="body">

<!--<fieldset class="layui-elem-field layui-field-title">
    <legend>
        <span class="layui-breadcrumb">
            <a href="javascript:;">菜单管理</a>
            <a><cite>菜单列表</cite></a>
        </span>
    </legend>
</fieldset>-->

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">菜单列表</li>
        <li>添加菜单</li>
    </ul>
    <div class="layui-tab-content">
        <!-- 菜单里列表 -->
        <div class="layui-tab-item layui-show">
            <div class="my-btn-box">
                <!--<span class="fl">
                    <a class="layui-btn layui-btn-danger radius btn-delect" id="btn-delete-all">批量删除</a>
                    <a class="layui-btn btn-add btn-default" id="btn-add-menu">添加菜单</a>
                </span>-->
                <form class="fl layui-form" method="get" action="<?php echo url(''); ?>">
                    <div class="layui-input-inline">
                        <input name="search" type="text" autocomplete="off" placeholder="查询菜单" class="layui-input" value="<?php echo !empty($search) ? htmlentities($search) : ''; ?>" />
                    </div>
                    <button class="layui-btn mgl-20" lay-submit="" lay-filter="search">查询</button>
                </form>
            </div>
            <!-- 表格数据 -->
            <table id="dateTable" class="layui-table layui-form">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>排序</th>
                    <th>图标</th>
                    <th>菜单</th>
                    <th>定位</th>
                    <th style="width:50px;">状态</th>
                    <th style="width:105px;">操作</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($menu as $vo): ?>
                <tr>
                    <td><?php echo htmlentities($vo['id']); ?></td>
                    <td><?php echo htmlentities($vo['order']); ?></td>
                    <td><i class="layui-icon">&<?php echo htmlentities($vo['icon']); ?></i></td>
                    <td>├─<?php echo htmlentities($vo['name']); ?></td>
                    <td><?php echo !empty($vo['url']) ? htmlentities($vo['url']) : '-'; ?></td>
                    <td>
                        <?php if($vo['status'] == '1'): ?>
                        <input type="checkbox" checked name="open" lay-skin="switch" lay-filter="switch" lay-text="ON|OFF" data-id="<?php echo htmlentities($vo['id']); ?>"/>
                        <?php else: ?>
                        <input type="checkbox" name="open" lay-skin="switch" lay-filter="switch" lay-text="ON|OFF" data-id="<?php echo htmlentities($vo['id']); ?>"/>
                        <?php endif; ?>
                    </td>
                    <td>
                        <button type="button" class="layui-btn layui-btn-small layui-btn-normal btn-edit" data-id="<?php echo htmlentities($vo['id']); ?>">编辑</button>
                        <button type="button" class="layui-btn layui-btn-small layui-btn-danger btn-delete" data-id="<?php echo htmlentities($vo['id']); ?>">删除</button>
                    </td>
                </tr>
                <?php if(isset($vo['children'])): foreach($vo['children'] as $k=>$vv): ?>
                <tr>
                    <td><?php echo htmlentities($vv['id']); ?></td>
                    <td><?php echo htmlentities($vv['order']); ?></td>
                    <td><i class="layui-icon">&<?php echo htmlentities($vv['icon']); ?></i></td>
                    <td><?php if(count($vo['children']) == $k+1): ?>│&nbsp;&nbsp;└─<?php else: ?>│&nbsp;&nbsp;├─<?php endif; ?><?php echo htmlentities($vv['name']); ?></td>
                    <td><?php echo htmlentities($vv['url']); ?></td>
                    <td>
                        <?php if($vv['status'] == '1'): ?>
                        <input type="checkbox" checked name="open" lay-skin="switch" lay-filter="switch" lay-text="ON|OFF" data-id="<?php echo htmlentities($vv['id']); ?>"/>
                        <?php else: ?>
                        <input type="checkbox" name="open" lay-skin="switch" lay-filter="switch" lay-text="ON|OFF" data-id="<?php echo htmlentities($vv['id']); ?>"/>
                        <?php endif; ?>
                    </td>
                    <td>
                        <button type="button" class="layui-btn layui-btn-small layui-btn-normal btn-edit" data-id="<?php echo htmlentities($vv['id']); ?>">编辑</button>
                        <button type="button" class="layui-btn layui-btn-small layui-btn-danger btn-delete" data-id="<?php echo htmlentities($vv['id']); ?>">删除</button>
                    </td>
                </tr>
                <?php endforeach; endif; endforeach; ?>
                </tbody>
            </table>
        </div>
        <!-- 添加菜单 -->
        <div class="layui-tab-item edit-form-box">
            <form class="layui-form" action="">
                <div class="layui-form-item">
                    <label class="layui-form-label">父级菜单</label>
                    <div class="layui-input-inline">
                        <select name="pid" lay-verify="required" lay-search>
                            <option value="0">顶级</option>
                            <?php foreach($menu as $list): ?>
                            <option value="<?php echo htmlentities($list['id']); ?>"><?php echo htmlentities($list['name']); ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <div class="layui-form-mid layui-word-aux">必须 注:这里只限制了两级菜单</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单名称</label>
                    <div class="layui-input-inline">
                        <input name="name" type="text" required="" lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input" />
                    </div>
                    <div class="layui-form-mid layui-word-aux">必须</div>
                    <div class="layui-input-inline">
                        <input name="status" type="checkbox" lay-skin="switch" lay-filter="switch-status" lay-text="ON|OFF" checked value="1" />
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单图标</label>
                    <div class="layui-input-inline">
                        <input name="icon" type="text" placeholder="请输入图标" autocomplete="off" class="layui-input" />
                    </div>
                    <div class="layui-form-mid layui-word-aux">非必填&nbsp;&nbsp;例如: <span class="code">&amp;#xe614; 请在图标库中查找</span></div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单定位</label>
                    <div class="layui-input-inline">
                        <input name="url" type="text" required="" lay-verify="required" placeholder="请输入定位" autocomplete="off" class="layui-input" />
                    </div>
                    <div class="layui-form-mid layui-word-aux">必须&nbsp;&nbsp;例如:admin/System/index</div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label">菜单排序</label>
                    <div class="layui-input-inline">
                        <input name="order" type="number" placeholder="请输入排序" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <button type="button" class="layui-btn" lay-submit="" lay-filter="add-menu">提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js" charset="utf8"></script>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" charset="utf8"></script>
<script type="text/javascript" src="/static/admin/frame/layui/layui.js"></script><script type="text/javascript" src="/static/admin/js/table-tool.js"></script>
<script type="text/javascript">
    layui.use(['element','layer','form'], function(){
        var $ = layui.jquery,element = layui.element,layer = layui.layer,form = layui.form();

        // 初始化表格
        $('#dateTable').DataTable({
            "dom": '<"top">rt<"bottom"flp><"clear">',
            "autoWidth": false,                     // 自适应宽度
            "stateSave": true,                      // 刷新后保存页数
            "order": [[ 1, "desc" ]],               // 排序
            "searching": false,                     // 本地搜索
            "info": true,                           // 控制是否显示表格左下角的信息
            "stripeClasses": ["odd", "even"],       // 为奇偶行加上样式，兼容不支持CSS伪类的场合
            "aoColumnDefs": [{                      // 指定列不参与排序
                "orderable": false,
                "aTargets": [6]                     // 对应你的表格的列数
            }],
            "pagingType": "simple_numbers",         // 分页样式 simple,simple_numbers,full,full_numbers
            "deferRender": true,                    // 当处理大数据时，延迟渲染数据，有效提高Datatables处理能力
            "language": {                           // 国际化
                "url":'/static/admin/js/language.json'
            }
        });

        /*// 查询菜单
        form.on('submit(search)', function(data){
            console.log(data.field);
            // 带参数重新初始化表格
            table.settings()[0].ajax.data = data.field;
            table.ajax.reload();
        });*/

        // 监听状态开关显示隐藏
        form.on('switch(switch)', function(data){
            /*layer.msg('状态:'+ (this.checked ? 'ON' : 'OFF'), {
                offset: '6px'
            });*/
            // 获取id
            var id = $(this).attr('data-id');
            // 获取状态
            var status = this.checked?1:0;
            // 请求显示或隐藏
            $.post("<?php echo url('status'); ?>",{id:id,status:status},function(res){
                layer.msg(res.msg);
            });
        });

        // 监听添加菜单表单时状态开关
        form.on('switch(switch-status)', function(data){
            // 设置状态
            $(this).val(this.checked?1:0);
        });

        // 添加菜单
        form.on('submit(add-menu)', function(data){
            // POST请求
            $.post("<?php echo url('add'); ?>",data.field, function(res){
                if(res.status > 0){
                    layer.msg(res.msg,{time:1800},function(){
                        location.href = 'javascript:history.go(0)';
                    });
                }else{
                    layer.msg(res.msg,{time:1800});
                }
            });
            // 阻止提交
            return false;
        });

        // 编辑
        $(document).on('click','.btn-edit', function(){
            // 弹窗
            layer.open({
                type: 2,
                title: '菜单编辑',
                shadeClose: true,
                shade: 0.8,
                area: ['600px', '400px'],
                content: "<?php echo url('edit'); ?>?rid="+$(this).attr('data-id')
            });
            // 更新渲染
            form.render();
        });

        // 单个删除
        $(document).on('click','.btn-delete',function(){
            // 删除数据 layer.msg('还是别删了,删了会出事的',{time:1800});
            deleteAll($(this).attr('data-id'),"<?php echo url('delete'); ?>","<?php echo url('index'); ?>");
        })


    });
</script>
</body>
</html>