<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%
    String path = request.getContextPath(); //  path = "/travel"
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/bst/";
%>
 
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <title>资源管理页面</title>


    <!--STYLESHEET-->
    <!--=================================================-->


    <!--Open Sans Font [ OPTIONAL ]-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700' rel='stylesheet' type='text/css'>

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">

    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">

    <!--=================================================-->

    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>

    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">
    <link href="css/demo/myfonts/iconfont.css" rel="stylesheet">

    <!--DataTables [ OPTIONAL ]-->
    <link href="plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="plugins/datatables/extensions/Responsive/css/responsive.dataTables.min.css" rel="stylesheet">

    <%--  表单验证的css --%>
    <link href="plugins/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">

    <!--JSTree [ OPTIONAL ]-->
    <link href="plugins/jstree/themes/default/style.min.css" rel="stylesheet">
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">

    <%-- bootstrapTable的css--%>
    <link href="plugins\bootstrap-table\bootstrap-table.css" rel="stylesheet">
    <%-- 引入bootstrapTable的treegrid css --%>
    <link href="plugins/bootstrap-table/extensions/tree-column/jquery.treegrid.css" rel="stylesheet">

</head>


<body>
<div id="container" class="effect aside-float aside-bright mainnav-lg">

    <jsp:include page="common/header.jsp"></jsp:include>

    <div class="boxed">

        <!--CONTENT CONTAINER-->
        <!--===================================================-->
        <div id="content-container">
            <div id="page-head">

                <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                    <h1 class="page-header text-overflow">资源管理</h1>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->

                <!--Breadcrumb-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <ol class="breadcrumb">
                    <li><a href="../jsp/index.jsp"><i class="demo-pli-home"></i></a></li>
                    <li><a href="../jsp/index.jsp">系统管理</a></li>
                    <li class="active">资源管理</li>
                </ol>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End breadcrumb-->

            </div>


            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">


                <!-- ajax方式获取数据表格 -->
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">资源管理</h3>

                    </div>
                    <div class="panel-body">

                        <div class="mar-btm">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#useradd">新增</button>
                        </div>

                        <table id="resource-table" class="table table-striped table-bordered" cellspacing="0"
                               width="100%">
                            <%--<thead>
                            <tr>
                                <th></th>
                                <th class="min-desktop">资源名称</th>
                                <th class="min-desktop">资源链接</th>
                                <th class="min-desktop">资源图标</th>
                                <th class="min-desktop">资源级别</th>
                                <th class="min-desktop">资源所属</th>
                                <th class="min-desktop">操作</th>
                            </tr>
                            </thead>--%>

                        </table>
                    </div>
                </div>
                <!-- ajax方式获取数据表格 -->



            </div>
            <!--===================================================-->
            <!--End page content-->

        </div>
        <!--===================================================-->
        <!--END CONTENT CONTAINER-->


        <jsp:include page="common/aside.jsp"></jsp:include>


        <jsp:include page="common/nav.jsp"></jsp:include>

    </div>
    <!-- Button trigger modal -->

    <!-- 修改内容的弹出框 -->
    <div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">修改角色信息</h4>
                </div>
                <div class="modal-body">
                    <div class="panel-body">
                        <div class="panel-body">
                            <%-- 弹出框内用户可以修改的内容 --%>
                            <div class="panel">
                                <div class="panel-heading">
                                    <h3 class="panel-title">输入角色信息</h3>
                                </div>

                                <!--Horizontal Form-->
                                <!--===================================================-->
                                <form class="form-horizontal" style="border:1px solid rgba(0,0,0,0.07);"
                                      id="updateForm">
                                    <div class="panel-body">
                                        <input type="hidden" name="rid">
                                        <div class="form-group">
                                            <label class="col-sm-3 control-label" for="demo-hor-inputemail">角色名称</label>
                                            <div class="col-sm-9">
                                                <input type="text" placeholder="角色名称" id="demo-hor-inputemail"
                                                       class="form-control" name="rname">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-footer text-right">
                                        <button class="btn btn-success" type="button" id="xgbtn">修改</button>
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    </div>
                                </form>
                                <!--===================================================-->
                                <!--End Horizontal Form-->

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- FOOTER -->
    <!--===================================================-->
    <footer id="footer">

        <!-- Visible when footer positions are fixed -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="show-fixed pad-rgt pull-right">
            You have <a href="#" class="text-main"><span class="badge badge-danger">3</span> pending action.</a>
        </div>


        <!-- Visible when footer positions are static -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <div class="hide-fixed pull-right pad-rgt">
            14GB of <strong>512GB</strong> Free.
        </div>


        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->
        <!-- Remove the class "show-fixed" and "hide-fixed" to make the content always appears. -->
        <!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

        <p class="pad-lft">&#0169; 2017 Your Company</p>


    </footer>
    <!--===================================================-->
    <!-- END FOOTER -->


    <!-- SCROLL PAGE BUTTON -->
    <!--===================================================-->
    <button class="scroll-top btn">
        <i class="pci-chevron chevron-up"></i>
    </button>
    <!--===================================================-->


</div>
<!--===================================================-->
<!-- 修改内容的弹出框-->

<%-- 新增用户的模态框 --%>
<div class="modal" tabindex="-1" role="dialog" id="useradd">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">角色数据添加界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="formadd">

                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色名称：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="角色名称" class="form-control" name="rname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色所属公司：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="角色所属公司" class="form-control" name="rbianma">
                            </div>
                        </div>

                    </div>
                    <div class="panel-footer text-right">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button class="btn btn-success" type="button" id="addbaocun">保存</button>
                    </div>
                </form>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%-- 新增用户的模态框 --%>

<%-- 查看角色下的腰用户信息的模态框 --%>
<div class="modal fade bs-example-modal-lg" id="showModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">角色用户信息界面</h4>
            </div>
            <div class="modal-body">
                <div class="mar-btm">
                    <h5>角色名称:<span id="roleName" style="color: red"></span></h5>
                    <button class="btn-danger btn" disabled id="xiugaiyonghu">修改用户</button>
                </div>
                <table id="userShow" class="table table-striped table-bordered" cellspacing="0"
                       width="100%">
                    <thead>
                    <tr>
                        <th data-checkbox></th>
                        <th>uid</th>
                        <th class="min-desktop">用户名</th>
                        <th class="min-desktop">邮箱</th>
                        <th class="min-desktop">手机号</th>
                        <th class="min-desktop">注册时间</th>
                        <th class="min-desktop">注册地址</th>
                        <th class="min-desktop">格言</th>
                        <th class="min-desktop">操作</th>
                    </tr>
                    </thead>

                </table>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<%-- 查看角色下的腰用户信息的模态框--%>

<!--JAVASCRIPT-->
<!--=================================================-->
<!--jQuery [ REQUIRED ]-->
<script src="js/jquery.min.js"></script>

<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>

<!--NiftyJS [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>

<!--=================================================-->
<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>

<!--DataTables [ OPTIONAL ]-->
<script src="plugins/datatables/media/js/jquery.dataTables.js"></script>
<script src="plugins/datatables/media/js/dataTables.bootstrap.js"></script>
<script src="plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>

<!--  datatable bootbox 表格插件 -->
<script src="js/demo/tables-datatables.js"></script>
<script src="plugins/bootbox/bootbox.min.js"></script>

<%--  表单验证插件引入 js --%>
<script src="plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
<!--JSTree [ OPTIONAL ]-->
<script src="plugins/jstree/jstree.min.js"></script>

<%-- 引入bootstrapTable 的js插件 --%>
<script src="plugins/bootstrap-table/bootstrap-table.js"></script>
<%-- 引入bootstrapTable 的语言包 --%>
<script src="plugins/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<%-- 引入bootstrapTable的treegrid插件 --%>
<script src="plugins/bootstrap-table/extensions/tree-column/jquery.treegrid.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap-table/1.12.0/extensions/treegrid/bootstrap-table-treegrid.js"></script>

<%-- Live2D动画的插件--%>
<script src="./lib/L2Dwidget.min.js"></script>
<script type="text/javascript">
    L2Dwidget.init({
        "model": {
            jsonPath:
                "https://unpkg.com/live2d-widget-model-shizuku@1.0.5/assets/shizuku.model.json",
            "scale": 0.8
        }, "display": {
            "position": "left", "width":200, "height": 270,
            "hOffset": 40, "vOffset": 20,

        }, "mobile": {"show": true, "scale": 0.5},
        "react": {opacity: 0.6},
        dialog: {
            // 开启对话框
            enable: true,
            script: {
                // 每空闲 10 秒钟，显示一条一言
                'every idle 10s': '$hitokoto$',
                // 当触摸到星星图案
                'hover .star': '星星在天上而你在我心里 (*/ω＼*)',
                // 当触摸到角色身体
                'tap body': '哎呀！别碰我！',
                // 当触摸到角色头部
                'tap face': '人家已经不是小孩子了！'
            }
        }


    });
</script>
<%-- Live2D动画的插件--%>

<%-- 注册 修改操作 表单验证 --%>
<script>
    $(function () {
        $('#updateForm,#formadd').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                rname: {
                    message: '角色名验证失败',
                    validators: {
                        notEmpty: {
                            message: '角色名不能为空'
                        },
                        stringLength: {
                            min: 2,
                            max: 5,
                            message: '角色名必须在2到5位之间'
                        },
                    }
                },
                rbianma: {
                    message: '公司名称验证失败',
                    validators: {
                        notEmpty: {
                            message: '公司名称不能为空'
                        },
                        /*stringLength: {
                            min: 6,
                            max: 18,
                            message: '用户名长度必须在6到18位之间'
                        },*/

                    }
                }
                ,
            },
        });
    });
</script>
<%-- 通过bootstrapTable获取数据 --%>
<script type="text/javascript">
    var $table = $('#resource-table');
    var data = JSON.parse(
        '[{"aid":1,"opid":0,"status":1,"rename":"用户管理","permissionValue":"open:user:manage"},' +
        '{"aid":2,"opid":0,"status":1,"rename":"系统管理","permissionValue":"open:system:manage"},' +
        '{"aid":3,"opid":1,"status":1,"rename":"新增用户","permissionValue":"open:user:add"},' +
        '{"aid":4,"opid":1,"status":1,"rename":"修改用户","permissionValue":"open:user:edit"},' +
        '{"aid":5,"opid":1,"status":0,"rename":"删除用户","permissionValue":"open:user:del"},' +
        '{"aid":6,"opid":2,"status":1,"rename":"系统配置管理","permissionValue":"open:systemconfig:manage"},' +
        '{"aid":7,"opid":6,"status":1,"rename":"新增配置","permissionValue":"open:systemconfig:add"},' +
        '{"aid":8,"opid":6,"status":1,"rename":"修改配置","permissionValue":"open:systemconfig:edit"},' +
        '{"aid":9,"opid":6,"status":0,"rename":"删除配置","permissionValue":"open:systemconfig:del"},' +
        '{"aid":10,"opid":2,"status":1,"rename":"系统日志管理","permissionValue":"open:log:manage"},' +
        '{"aid":11,"opid":10,"status":1,"rename":"新增日志","permissionValue":"open:log:add"},' +
        '{"aid":12,"opid":10,"status":1,"rename":"修改日志","permissionValue":"open:log:edit"},' +
        '{"aid":13,"opid":10,"status":0,"rename":"删除日志","permissionValue":"open:log:del"}]');

    $(function() {

        //控制台输出一下数据
        console.log(data);

        $table.bootstrapTable({
            data:data,
            idField: 'aid',
            dataType:'jsonp',
            columns: [
                { field: 'check',  checkbox: true, formatter: function (value, row, index) {
                        if (row.check == true) {
                            // console.log(row.serverName);
                            //设置选中
                            return {  checked: true };
                        }
                    }
                },
                { field: 'rename',  title: '名称' },
                // {field: 'id', title: '编号', sortable: true, align: 'center'},
                // {field: 'pid', title: '所属上级'},
                { field: 'status',  title: '状态', sortable: true,  align: 'center', formatter: 'statusFormatter'  },
                { field: 'permissionValue', title: '权限值'  },
                { field: 'operate', title: '操作', align: 'center', events : operateEvents, formatter: 'operateFormatter' },
            ],

            // bootstrap-table-treegrid.js 插件配置 -- start

            //在哪一列展开树形
            treeShowField: 'rename',
            //指定父id列
            parentIdField: 'opid',

            onResetView: function(data) {
                //console.log('load');
                $table.treegrid({
                    initialState: 'collapsed',// 所有节点都折叠
                    // initialState: 'expanded',// 所有节点都展开，默认展开
                    treeColumn: 1,
                     expanderExpandedClass: 'glyphicon glyphicon-minus',  //图标样式
                     expanderCollapsedClass: 'glyphicon glyphicon-plus',
                    onChange: function() {
                        $table.bootstrapTable('resetWidth');
                    }
                });

                //只展开树形的第一级节点
                $table.treegrid('getRootNodes').treegrid('expand');

            },
            onCheck:function(row){
                var datas = $table.bootstrapTable('getData');
                // 勾选子类
                selectChilds(datas,row,"id","pid",true);

                // 勾选父类
                selectParentChecked(datas,row,"id","pid")

                // 刷新数据
                $table.bootstrapTable('load', datas);
            },

            onUncheck:function(row){
                var datas = $table.bootstrapTable('getData');
                selectChilds(datas,row,"id","pid",false);
                $table.bootstrapTable('load', datas);
            },
            // bootstrap-table-treetreegrid.js 插件配置 -- end
        });
    });

    // 格式化按钮
    function operateFormatter(value, row, index) {
        return [
            '<button type="button" class="RoleOfadd btn-small  btn-primary" style="margin-right:15px;"><i class="fa fa-plus" ></i>&nbsp;新增</button>',
            '<button type="button" class="RoleOfedit btn-small   btn-primary" style="margin-right:15px;"><i class="fa fa-pencil-square-o" ></i>&nbsp;修改</button>',
            '<button type="button" class="RoleOfdelete btn-small   btn-primary" style="margin-right:15px;"><i class="fa fa-trash-o" ></i>&nbsp;删除</button>'
        ].join('');

    }
    // 格式化类型
    function typeFormatter(value, row, index) {
        if (value === 'menu') {  return '菜单';  }
        if (value === 'button') {  return '按钮'; }
        if (value === 'api') {  return '接口'; }
        return '-';
    }
    // 格式化状态
    function statusFormatter(value, row, index) {
        if (value === 1) {
            return '<span class="label label-success">正常</span>';
        } else {
            return '<span class="label label-default">锁定</span>';
        }
    }

    //初始化操作按钮的方法
    window.operateEvents = {
        'click .RoleOfadd': function (e, value, row, index) {
            add(row.id);
        },
        'click .RoleOfdelete': function (e, value, row, index) {
            del(row.id);
        },
        'click .RoleOfedit': function (e, value, row, index) {
            update(row.id);
        }
    };
</script>
<%-- 通过bootstrapTable获取数据 --%>
<%--  修改操作模态框 js --%>
<script>
    //修改操作  模态框
    $(function () {
        $("#resource-table").on("click", ".xiugai", function () {
            $("#myModal").modal('show');
            var thisindex = $(this).parent().parent().index();
            //构建datatable的变量  获取表格每行的数据
            t = $("#resource-table").DataTable();
            var rid = t.row(thisindex).data().rid;
            var rname = t.row(thisindex).data().rname;

            //把当前的数据付给弹出框
            $("#updateForm input[name=rname]").val(rname);
            $("#updateForm input[name=rid]").val(rid);

            //ajax调用后台
            $("#updateForm").on("click", "#xgbtn", function () {
                //判断  表单验证的 结果
                var flag = $("#updateForm").data("bootstrapValidator").validate().isValid();
                if (!flag) {
                    return;
                }
                $.ajax({
                        url: "../system/update",
                        data: $("#updateForm").serialize(),
                        success: function (data) {
                            if (data == true) {
                                $("#myModal").modal("hide");
                                t.ajax.reload();
                                $.niftyNoty({
                                    type: 'info',
                                    icon: 'pli-exclamation icon-2x',
                                    message: '修改数据成功',
                                    container: 'floating',
                                    timer: 3000
                                });
                            }
                        }
                    }
                );
            })
        })
    });
</script>

<%-- 删除操作 --%>
<script>
    $(function () {
            // 根据表格数据的id  删除一行元素
            $("#resource-table").on("click", ".delbtn", function () {
                var $_this = $(this).parent().parent();
                //datatable取值，先获取行号
                var thisindex = $(this).parent().parent().index();
                //构建datatable的变量
                var t = $("#resource-table").DataTable();
                var rid = t.row(thisindex).data().rid;
                var ruser = t.row(thisindex).data().ruser;
                if (ruser > 0) {
                    bootbox.alert("不能删除该条记录");
                    return;
                }
                bootbox.confirm({
                    message: "确定要删除本条记录吗?",
                    buttons: {
                        confirm: {
                            label: 'Yes',
                            className: 'btn-success'
                        },
                        cancel: {
                            label: 'No',
                            className: 'btn-danger'
                        }
                    },
                    callback: function (result) {
                        if (result) {
                            //构建datatable的变量  获取表格每行的数据
                            $.ajax({
                                url: '../system/delete',
                                data: 'rid=' + rid,
                                success: function (data) {
                                    if (data == true) {
                                        t.ajax.reload();
                                        $.niftyNoty({
                                            type: 'info',
                                            icon: 'pli-exclamation icon-2x',
                                            message: '删除记录成功',
                                            container: 'floating',
                                            timer: 3000
                                        });
                                    }
                                }
                            });
                        }
                    }
                })
            })
        }
    );
</script>
<%-- 添加角色操作 --%>
<script>
    $("#addbaocun").on("click", function () {
        var dt = $("#resource-table").DataTable();
        var flag = $("#formadd").data("bootstrapValidator").validate().isValid();
        if (!flag) {
            return;
        }
        $.ajax({
            url: "../system/save",
            data: $("#formadd").serialize(),
            success: function (data) {
                $("#useradd").modal("hide");
                $.niftyNoty({
                    type: 'info',
                    icon: 'pli-exclamation icon-2x',
                    message: '新增数据成功',
                    container: 'floating',
                    timer: 3000
                });
                dt.ajax.reload();
            }
        })
    })
</script>

<%-- 查找操作  --%>
<script>
    $(function () {
            $("#search").change(function () {
                var search = $("#search").val();
                $.ajax({
                    url: "../test/search",
                    data: "search[value]=" + search,

                })

            })
        }
    );
</script>
<%-- 显示角色名称下的人员信息 --%>
<script>
    $("#resource-table").on("click", ".showbtn", function () {
        $("#showModal").modal('show');
        var thisindex = $(this).parent().parent().index();
        //构建datatable的变量  获取表格每行的数据
        t = $("#resource-table").DataTable();
        var rid = t.row(thisindex).data().rid;
        var rname = t.row(thisindex).data().rname;
        $("#roleName").text(rname);
        $('#userShow').dataTable({
            destroy: true,  //允许表格自动清除
            "ordering": false,  //关闭排序功能
            "searching": true,  // false  关闭搜索框
            "ajax": {
                "url": "../system/getroleuser?rid=" + rid,
                //默认为data,这里定义为空，则只需要传不带属性的数据
                "dataSrc": ""
            },
            "columns": [

                {
                    data: "uid",
                    render: function (data) {

                        return '<input  class="dfcheckbox" type="checkbox" name="uidcheck" value="' + data + '" checked="true" >'
                    },
                    orderable: false,//排序
                },
                {"data": "uid", "visible": false,},
                {"data": "username",},
                {"data": "email",},
                {"data": "phone",},
                {"data": "register_time", orderable: true},
                {"data": "register_address",},
                {"data": "signed",},
                {
                    "data": null,
                    /*defaultContent  添加默认值*/
                    defaultContent: '<a href="javascript::##" class="xiugai"><i class="myfont icon-tianxie"></i></a>' +
                    '<a href="javascript::##" class="delbtn"><i class="myfont icon-shanchu"></i></a>',
                    orderable: false  //关闭该列数据排序
                }
            ],
            language: {
                "sProcessing": "处理中...",
                "sLengthMenu": "显示 _MENU_ 项结果",
                "sZeroRecords": "没有匹配结果",
                "sInfo": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty": "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered": "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix": "",
                "sSearch": "搜索:",
                "sUrl": "",
                "sEmptyTable": "表中数据为空",
                "sLoadingRecords": "载入中...",
                "sInfoThousands": ",",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "上页",
                    "sNext": "下页",
                    "sLast": "末页"
                },
                "oAria": {
                    "sSortAscending": ": 以升序排列此列",
                    "sSortDescending": ": 以降序排列此列"
                }
            },

        });
    });
</script>
<%-- 显示角色名称下的人员信息 --%>

<%-- 日期转换 --%>
<script>
    Date.prototype.format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1,                 //月份
            "d+": this.getDate(),                    //日
            "h+": this.getHours(),                   //小时
            "m+": this.getMinutes(),                 //分
            "s+": this.getSeconds(),                 //秒
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度
            "S": this.getMilliseconds()             //毫秒
        };
        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }
        return fmt;
    }
</script>

<%-- 处理角色信息的复选框 --%>
<script>
    var checkvalues = ["ALL"];
    console.log(checkvalues)
    //全选按钮的点击
    $("#CheckedAll").click(function () {
        $("#xiugaiyonghu").prop("disabled", false);
        //所有checkbox跟着全选的checkbox走。
        $('[name=uidcheck]:checkbox').prop("checked", this.checked);
        //判断一下是否是选中状态
        if ($("#CheckedAll").prop("checked")) {
            /*$("#roleusermess input[name=uidcheck]").each(function () {

                checkvalues.push( $(this).val())
            })*/
            checkvalues = ["ALL"]
            console.log(checkvalues);

        } else {
            checkvalues = [];
            console.log(checkvalues);
        }
    });

    //单个复选框点击
    $("#userShow").on("click", ".dfcheckbox", function () {
        $("#xiugaiyonghu").prop("disabled", false);
        //定义一个临时变量，避免重复使用同一个选择器选择页面中的元素，提升程序效率。
        var $tmp = $('[name=uidcheck]:checkbox');
        //用filter方法筛选出选中的复选框。并直接给CheckedAll赋值。
        $('#CheckedAll').prop('checked', $tmp.length == $tmp.filter(':checked').length);

        if ($(this).prop("checked")) {
            for (var i = 0; i < checkvalues.length; i++) {
                if ($(this).val() == checkvalues[i]) {
                    checkvalues.splice(i, 1);
                    break;
                }
            }
            console.log(checkvalues)
        } else {

            checkvalues.push($(this).val());

            console.log(checkvalues)
        }


    });

    $("#xiugaiyonghu").click(function () {
        $.ajax({
            url: "",
            data: "checkvalues=" + checkvalues,
            success: function () {

            }
        })
    });
</script>


</body>
</html>

