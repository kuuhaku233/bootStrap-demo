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
                            <thead>
                            <tr>
                                <th></th>
                                <th class="min-desktop">资源名称</th>
                                <th class="min-desktop">资源链接</th>
                                <th class="min-desktop">资源图标</th>
                                <th class="min-desktop">资源级别</th>
                                <th class="min-desktop">资源所属</th>
                                <th class="min-desktop">操作</th>
                            </tr>
                            </thead>

                        </table>
                    </div>
                </div>
                <!-- ajax方式获取数据表格 -->

                <%-- JS Tree获取资源数据 --%>
                <div class="panel">
                    <div class="panel-heading">
                        <h3 class="panel-title">Custom Icon (Font Awesome)</h3>
                    </div>
                    <div class="panel-body">
                        <div id="demo-jstree-3">
                            <ul>
                                <li class="jstree-open">Admin theme
                                    <ul>
                                        <li class="jstree-open">demo
                                            <ul>
                                                <li class="jstree-open">basic
                                                    <ul>
                                                        <li data-jstree='{"type":"html"}'>index.html</li>
                                                        <li data-jstree='{"type":"file"}'>root.json</li>
                                                    </ul>
                                                </li>
                                                <li data-jstree='{"type":"file"}'>Readme.md</li>
                                            </ul>
                                        </li>
                                        <li>dist
                                            <ul>
                                                <li class="jstree-open">theme
                                                    <ul>
                                                        <li class="jstree-open">default
                                                            <ul>
                                                                <li data-jstree='{"type":"jpg"}'>32px.png</li>
                                                                <li data-jstree='{"type":"jpg"}'>40px.png</li>
                                                                <li data-jstree='{"type":"file"}'>style.css</li>
                                                                <li data-jstree='{"type":"file"}'>style.min.css</li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                    <ul>
                                                        <li>default-dark
                                                            <ul>
                                                                <li data-jstree='{"type":"jpg"}'>32px.png</li>
                                                                <li data-jstree='{"type":"jpg"}'>40px.png</li>
                                                                <li data-jstree='{"type":"file"}'>style.css</li>
                                                                <li data-jstree='{"type":"file"}'>style.min.css</li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li data-jstree='{"type":"file"}'>jstree.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.min.js</li>
                                            </ul>
                                        </li>
                                        <li>src
                                            <ul>
                                                <li data-jstree='{"type":"file"}'>intro.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.changed.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.checkbox.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.conditionalselect.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.contextmenu.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.dnd.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.massload.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.search.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.sort.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.state.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.types.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.unique.js</li>
                                                <li data-jstree='{"type":"file"}'>jstree.wholerow.js</li>
                                                <li data-jstree='{"type":"file"}'>misc.js</li>
                                                <li data-jstree='{"type":"file"}'>outro.js</li>
                                                <li data-jstree='{"type":"file"}'>sample.js</li>
                                                <li data-jstree='{"type":"file"}'>themes</li>
                                                <li data-jstree='{"type":"file"}'>vakata-jstree.js</li>
                                            </ul>
                                        </li>
                                        <li>unit</li>
                                        <li>visual</li>
                                        <li data-jstree='{"type":"zip"}'>package.zip</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <%-- JS Tree获取资源数据 --%>


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
                        <div class="checkbox">
                            <th><input class="" id="CheckedAll" type="checkbox" checked="true"></th>
                        </div>
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
<%--  通过datatable 获取数据  表格1--%>
<script>

    $(document).ready(function () {
        $('#resource-table').dataTable({
            "ordering": false,  //关闭排序功能
            "searching": true,  // false  关闭搜索框
            "ajax": {
                "url": "../system/getresource",
                //默认为data,这里定义为空，则只需要传不带属性的数据
                "dataSrc": ""
            },
            "columns": [
                {
                    "data": "reid",
                    "visible": false
                    // visible:false 单独隐藏列"visible": false
                },
                {"data": "resourcename"},
                {"data": "relink"},
                {"data": "rebianhao"},
                {
                    "data": "rejigouid", render:
                        function (data) {
                            if (data == 0) {
                                return '<span style="color: red;font-weight: bold">一级资源</span>'
                            } else if (data == 1) {
                                return "二级资源"
                            }
                            else {
                                return "三级资源"
                            }
                        }
                },
                {"data": "reopjigouid", orderable: false},
                {
                    "data": null
                    ,
                    /*defaultContent  添加默认值*/
                    defaultContent: '<a href="javascript::##" class="xiugai"><i class="myfont icon-tianxie"></i></a>' +
                    '<a href="javascript::##" class="delbtn"><i class="myfont icon-shanchu"></i></a>' +
                    '<a href="javascript::##" class="showbtn"><i class="myfont icon-sousuo"></i></a>',
                    orderable: false  //关闭该列数据排序
                }
            ],
            language: {
                "sProcessing":
                    "处理中...",
                "sLengthMenu":
                    "显示 _MENU_ 项结果",
                "sZeroRecords":
                    "没有匹配结果",
                "sInfo":
                    "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
                "sInfoEmpty":
                    "显示第 0 至 0 项结果，共 0 项",
                "sInfoFiltered":
                    "(由 _MAX_ 项结果过滤)",
                "sInfoPostFix":
                    "",
                "sSearch":
                    "搜索:",
                "sUrl":
                    "",
                "sEmptyTable":
                    "表中数据为空",
                "sLoadingRecords":
                    "载入中...",
                "sInfoThousands":
                    ",",
                "oPaginate":
                    {
                        "sFirst":
                            "首页",
                        "sPrevious":
                            "上页",
                        "sNext":
                            "下页",
                        "sLast":
                            "末页"
                    }
                ,
                "oAria":
                    {
                        "sSortAscending":
                            ": 以升序排列此列",
                        "sSortDescending":
                            ": 以降序排列此列"
                    }
            }
            ,

        });
    })
    ;
</script>
<%-- 通过datatable 获取数据  表格1--%>

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

<%-- Js Tree 处理资源--%>
<script>
    $('#demo-jstree-3').jstree({
        'core': {
            'check_callback': true,
            data:function (obj,callback) {

            }
        },
        'plugins': ['types', 'dnd'],
        'types': {
            'default': {
                'icon': 'fa fa-folder-o'
            },
            'html': {
                'icon': 'fa fa-file-text-o'
            },
            'file': {
                'icon': 'fa fa-file-text-o'
            },
            'jpg': {
                'icon': 'fa fa-file-image-o'
            },
            'zip': {
                'icon': 'fa fa-file-zip-o'
            }
        },
        
    });
</script>

</body>
</html>

