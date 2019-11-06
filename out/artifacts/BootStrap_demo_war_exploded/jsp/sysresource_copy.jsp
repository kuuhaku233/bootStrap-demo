<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath(); //  path = "/travel"
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/bst/";
%>
<!DOCTYPE html>
<html lang="en">


<head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>资源管理页面</title>

    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">

    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">
    <link href="css/demo/myfonts/iconfont.css" rel="stylesheet">
    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>

    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">


    <!--Bootstrap Table [ OPTIONAL ]-->
    <link href="plugins/bootstrap-table/bootstrap-table.min.css" rel="stylesheet">
    <link href="plugins/bootstrap-table/extensions/treegrid/jquery.treegrid.css" rel="stylesheet">


    <!--Bootstrap Validator 表单验证-->
    <link href="plugins/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">

    <link rel="Shortcut Icon" href="" type="image/x-icon"/>
    <link rel="icon" type="image/png" href="/tgyj/systementry/img/favicon.png">
    <!--JSTree [ OPTIONAL ]-->
    <link href="plugins/jstree/themes/default/style.min.css" rel="stylesheet">
    <!--Font Awesome [ OPTIONAL ]-->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
<div id="container" class="effect aside-float aside-bright mainnav-lg">

    <!--头部导航-->
    <jsp:include page="common/header.jsp"></jsp:include>
    <!--头部导航结束-->

    <div class="boxed">

        <!--CONTENT CONTAINER-->
        <!--===================================================-->
        <div id="content-container">
            <div id="page-head">

                <!--Page Title-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <div id="page-title">
                    <h1 class="page-header text-overflow">系统管理</h1>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->


                <!--Breadcrumb-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <ol class="breadcrumb">
                    <li><a href="#"><i class="demo-pli-home"></i></a></li>
                    <li><a href="#">系统管理</a></li>
                    <li class="active">资源管理</li>
                </ol>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End breadcrumb-->

            </div>


            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">

                <!-- Basic Data Tables -->
                <!--===================================================-->
                <div class="panel">

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
                        <div id="demo-jstree-3">

                        </div>
                    </div>
                </div>
                <!--===================================================-->
                <!-- End Striped Table -->


            </div>
            <!--===================================================-->
            <!--End page content-->

        </div>
        <!--===================================================-->
        <!--END CONTENT CONTAINER-->


        <!--右侧导航-->
        <jsp:include page="common/aside.jsp"></jsp:include>
        <!--右侧导航结束-->


        <!--左侧导航-->
        <jsp:include page="common/nav.jsp"></jsp:include>
        <!--左侧导航结束-->

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
<%--修改弹出框--%>
<div class="modal" tabindex="-1" role="dialog" id="xiugai">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i
                        class="pci-cross pci-circle"></i></button>
                <h4 class="modal-title">系统资源修改界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="formupdate">
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

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<%--新增弹出框--%>
<div class="modal" tabindex="-1" role="dialog" id="useradd">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
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

<%--查看角色下人员--%>
<div class="modal" tabindex="-1" role="dialog" id="roleusers">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">角色用户信息界面</h4>
            </div>
            <div class="modal-body">
                <div class="mar-btm">
                    <h4>角色名称：<span id="rolename" style="color: red"></span></h4>
                </div>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<!--jQuery [ REQUIRED ]-->
<script src="js/jquery.min.js"></script>
<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>
<!--NiftyJS [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>
<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>


<!--Bootstrap Table [ OPTIONAL ]-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-treegrid/0.2.0/js/jquery.treegrid.min.js"></script>
<script src="plugins/bootstrap-table/bootstrap-table.min.js"></script>
<script src="plugins/bootstrap-table/locale/bootstrap-table-zh-CN.js"></script>
<script src="plugins/bootstrap-table/extensions/treegrid/bootstrap-table-treegrid.js"></script>

<%--弹出框--%>
<script src="plugins/bootbox/bootbox.min.js"></script>

<!--Bootstrap Validator 表单验证-->
<script src="plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
<!--JSTree [ OPTIONAL ]-->
<script src="plugins/jstree/jstree.min.js"></script>
<%--表单验证js--%>
<script>
    $(function () {
        $("#formadd,#formupdate").bootstrapValidator({
            message: 'This value is not valid',
            //验证显示的图标
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            //验证规则
            fields: {
                username: {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '用户名长度必须在6到18位之间'
                        },
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '密码长度必须在6到18位之间'
                        },
                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: '邮箱不能为空'
                        },
                        emailAddress: {
                            message: '邮箱地址格式有误'
                        }
                    }
                },

                phone: {
                    validators: {
                        notEmpty: {
                            message: '手机号不能为空'
                        },
                        regexp: {
                            regexp: /^1[34578]\d{9}$/,
                            message: '手机号格式不正确'
                        },
                        remote: {//ajax验证。server result:{"valid",true or false}
                            url: "../system/userphoneyanzheng",
                            message: '改手机号已经注册过',
                            delay: 1000,//ajax刷新的时间是1秒一次
                            type: 'POST',

                            //自定义提交数据，默认值提交当前input value
                            data: ""
                        }

                    }
                },
                register_address: {
                    validators: {
                        notEmpty: {
                            message: '注册地址不能为空'
                        }
                    }
                },
                register_time: {
                    validators: {
                        notEmpty: {
                            message: '注册时间不能为空'
                        }
                    }
                },

            }

        })

    })
</script>

<%--datatable--%>
<script>

    $(function () {
        window.operateEvents = {
            //修改方法
            'click .xiugai': function (e, value, row, index) {
                $("#formupdate input[name=resourcename]").val(row.resourcename);
                $("#formupdate input[name=reid]").val(row.reid);
                $("#formupdate input[name=relink]").val(row.relink);
                $("#formupdate input[name=rebianhao]").val(row.rebianhao);
                $("#xgbtn").on("click", function () {
                    $.ajax({
                        url: "../system/updateresource",
                        data: $("#formupdate").serialize(),
                        success: function (data) {
                            if (data) {
                                $("#xiugai").modal('hide');
                                $.niftyNoty({
                                    type: 'info',
                                    icon: 'pli-exclamation icon-2x',
                                    message: '修改数据成功',
                                    container: 'floating',
                                    timer: 3000
                                });
                            }
                        }
                    })
                })
            },

            //删除方法
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
                                url: "../system/deleresourcemess",
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

            }
        }

        var $table = $('#resource-table')
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
                    /*formatter:function (val,row) {
                        if(val==0){
                            return " ";
                        }else{
                            return val;
                        }
                    }*/

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
                    expanderExpandedClass: 'glyphicon glyphicon-triangle-right',  //图标样式
                    expanderCollapsedClass: 'glyphicon glyphicon-triangle-bottom',
                    onChange: function () {
                        $table.bootstrapTable('resetWidth');
                    }
                });

                //只展开树形的第一级节点
                $table.treegrid('getRootNodes').treegrid('expand');

            },


        });


    })


</script>


</body>
</html>

