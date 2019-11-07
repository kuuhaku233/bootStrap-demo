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
    <link href="plugins/bootstrap-table/extensions/treegrid/jquery.treegrid.css" rel="stylesheet">
    <%-- 引入bootstrap select的css --%>
    <link href="plugins/bootstrap-select/bootstrap-select.css" rel="stylesheet">

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

                        <div class="mar-btm" id="btntest1">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#useradd">新增</button>
                            <button class="btn btn-danger" data-toggle="modal" data-target="#useradd">导出excel</button>
                        </div>

                        <table id="resource-table" class="table table-striped table-bordered" cellspacing="0"
                               width="100%">
                            <thead>
                            <tr>
                                <th data-checkbox="true"></th>
                                <th>reid</th>
                                <th>资源名称</th>
                                <th>资源链接</th>
                                <th>资源图标</th>
                                <th>资源级别</th>
                                <th>资源所属</th>

                                <th>操作</th>
                            </tr>
                            </thead>

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

<!-- 修改内容的弹出框 -->
<div class="modal" tabindex="-1" role="dialog" id="xiugai">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i
                        class="pci-cross pci-circle"></i></button>
                <h4 class="modal-title">系统资源修改界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="update">
                    <input type="hidden" name="reid">
                    <input type="hidden" name="rejigouid">
                    <input type="hidden" name="reopjigouid">
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">资源名称：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="资源名称：" class="form-control" name="resourcename">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">资源链接：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="资源链接：" class="form-control" name="relink">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">资源图标：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="资源图标：" class="form-control" name="rebianhao">
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer text-right">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button class="btn btn-success" type="button" id="xgbtn">修改</button>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<!-- 修改内容的弹出框 -->

<%-- 新增用户的模态框 --%>
<div class="modal" tabindex="-1" role="dialog" id="useradd">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">资源信息添加界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="formadd">

                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label" >资源名称：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="资源名称"  class="form-control" name="resourcename">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" >资源链接：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="资源链接"  class="form-control" name="relink">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" >资源图标：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="资源图标"  class="form-control" name="rebianhao">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" >资源级别：</label>
                            <div class="col-sm-9">
                                <select class="selectpicker" name="rejigouid" class="form-control" id="select1">
                                    <option value=" " selected>..请选择..</option>
                                    <option value="0">一级资源</option>
                                    <option value="1">二级资源</option>
                                    <option value="2">三级资源</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label" >资源所属：</label>
                            <div class="col-sm-9">
                                <select class="selectpicker" name="reopjigouid" class="form-control" id="select2" disabled>

                                </select>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-treegrid/0.2.0/js/jquery.treegrid.min.js"></script>
<script src="plugins/bootstrap-table/bootstrap-table.min.js"></script>
<%-- 引入bootstrapTable的语言包 --%>
<script src="plugins/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<%-- 引入treegrid插件 --%>
<script src="plugins/bootstrap-table/extensions/treegrid/bootstrap-table-treegrid.js"></script>
<%-- 引入bootstrap select的插件--%>
<script src="plugins/bootstrap-select/bootstrap-select.js"></script>

<%-- Live2D动画的插件--%>
<script src="./lib/L2Dwidget.min.js"></script>
<script type="text/javascript">
    L2Dwidget.init({
        "model": {
            jsonPath:
                "https://unpkg.com/live2d-widget-model-shizuku@1.0.5/assets/shizuku.model.json",
            "scale": 0.8
        }, "display": {
            "position": "left", "width": 200, "height": 270,
            "hOffset": 40, "vOffset": 20,

        }, "mobile": {"show": true, "scale": 0.5},
        "react": {opacity: 0.8},
        dialog: {
            // 开启对话框
            enable: true,
            script: {
                // 每空闲 10 秒钟，显示一条一言
                'every idle 8s': '$hitokoto$',
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
    window.operateEvents = {
        //删除资源操作
        'click .shanchu': function (e, value, row, index) {
            bootbox.confirm({
                size: "small",
                message: "确认要删除该条数据吗？",
                buttons: {
                    confirm: {
                        label: '删除',
                        className: 'btn-danger'
                    },
                    cancel: {
                        label: '取消',

                    }
                },
                callback: function (result) {
                    if (result) {
                        $.ajax({
                            url: "../system/delresource",
                            data: "reid=" + row.reid,
                            success: function (data) {
                                if (data) {
                                    $table.bootstrapTable('remove', {
                                        field: 'reid',
                                        values: [row.reid]
                                    })
                                    $.niftyNoty({
                                        type: 'info',
                                        icon: 'pli-exclamation icon-2x',
                                        message: '删除数据成功',
                                        container: 'floating',
                                        timer: 3000
                                    });

                                }
                            }
                        })
                    }
                }
            })
        },
        //删除资源操作

        //修改资源操作
        'click .xiugai': function (e, value, row, index) {
            $("#update input[name=resourcename]").val(row.resourcename);
            $("#update input[name=reid]").val(row.reid);
            $("#update input[name=relink]").val(row.relink);
            $("#update input[name=rebianhao]").val(row.rebianhao);
            $("#update").off("click").on("click","#xgbtn", function () {
                $.ajax({
                    url: "../system/updateresource",
                    data: $("#update").serialize(),
                    success: function (data) {
                        if (data) {
                            $("#xiugai").modal("hide");
                            $.niftyNoty({
                                type: 'info',
                                icon: 'pli-exclamation icon-2x',
                                message: '修改数据成功',
                                container: 'floating',
                                timer: 3000,
                            });
                            // alert("修改成功");
                        }
                        $table.bootstrapTable('refresh');

                    }
                });
            });
        }
        //修改资源操作

    }
     $table = $('#resource-table')
    //构建datatable
    $table.bootstrapTable('destroy').bootstrapTable({
        destroy: true,
        toolbar: "#btntest1",
        idField: "reid",//设置列为选中列
        url: "../system/getresource",
        locale: 'zh-CN',
        pagination: true,//分页
        pageNumber: 1,//默认显示第1也
        pageSize: 10,//每页显示的数量
        pageList: [5, 10, 20, 50, 100],//设置每页显示的数量
        search: true,//搜索
        sidePagination: 'server',//设置服务器端分页*********************
        showRefresh: true, //显示刷新按钮
        showColumns: true,//显示列刷选
        silent: true,

        striped: true,
        columns: [
            {
                checkbox: true,

            },
            {
                field: "reid",
                visible: false,
            },
            {
                field: "resourcename",
            },
            {
                field: "relink",
            },
            {
                field: "rebianhao",
                formatter: function (val) {
                    return '<span class="' + val + '"></span>'
                },
                sortable: true,

            },
            {
                field: "rejigouid",
                formatter: function (val, row) {
                    if (val == 0) {
                        return '<div class="label label-table label-danger">一级资源</div>'
                    } else if (val == 1) {
                        return '<div class="label label-table label-success">二级资源</div>'
                    } else if (val == 2) {
                        return '<div class="label label-table label-warning">页面按钮</div>'
                    }

                }
            },
            {
                field: "reopjigouid",
            },

            {
                field: null,
                events: window.operateEvents,
                align: 'center',
                clickToSelect: true,
                formatter: function (value, row, index) {

                    return '<a href="javascript:void(0)" class="xiugai" data-target="#xiugai" data-toggle="modal" ><i class="myfont icon-tianxie"></i></a>' +
                        '<a href="javascript:void(0)" class="shanchu" reid="' + row.reid + '"><i class="myfont icon-shanchu"></i></a>'
                }
            }
        ],
        treeShowField: 'resourcename',
        parentIdField: 'reopjigouid',

        onResetView: function (data) {

            $table.treegrid({
                initialState: 'expanded',// 所有节点都折叠
                // initialState: '',// 所有节点都展开，默认展开
                treeColumn: 1,
                expanderExpandedClass: 'glyphicon glyphicon-triangle-bottom',  //图标样式
                expanderCollapsedClass: 'glyphicon glyphicon-triangle-right',
                onChange: function () {
                    $table.bootstrapTable('resetWidth');
                }
            });

            //只展开树形的第一级节点
            $table.treegrid('getRootNodes').treegrid('expand');

        },


    });
</script>
<%-- 通过bootstrapTable获取数据 --%>

<%-- 处理下拉列表的级联 --%>
<script>
    $(function () {
        $("#select1").on("change",function () {
            $("#select2").empty();
            var select1Val=$("#select1 option:selected").val();
            if(select1Val!=0)
            {
                $("#select2").prop("disabled",false);
                $.ajax({
                    url:"../system/selectval",
                    data:"rejigouid="+select1Val,
                    success:function (data) {

                        console.log(data);
                        for(var i=0;i<data.length;i++)
                        {
                            $("#select2").append(
                                '<option value="'+data[i].reid+'">'+data[i].resourcename+'</option>'
                            )
                        }
                        $('#select2').selectpicker('refresh');
                        $('#select2').selectpicker('render');
                    }
                });
            }
            else {
                $("#select2").empty();
                $("#select2").attr("disabled","true");
                $('#select2').selectpicker('refresh');
                $('#select2').selectpicker('render');
            }



        })

    });
</script>
</body>
</html>

