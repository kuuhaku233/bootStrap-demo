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

    <title>角色管理页面</title>


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
                    <h1 class="page-header text-overflow">角色管理</h1>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->

                <!--Breadcrumb-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <ol class="breadcrumb">
                    <li><a href="../jsp/index.jsp"><i class="demo-pli-home"></i></a></li>
                    <li><a href="../jsp/index.jsp">系统管理</a></li>
                    <li class="active">角色管理</li>
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
                        <h3 class="panel-title">角色管理</h3>

                    </div>
                    <div class="panel-body">

                        <div class="mar-btm">
                            <button class="btn btn-primary" data-toggle="modal" data-target="#useradd">新增</button>
                        </div>

                        <table id="example1" class="table table-striped table-bordered" cellspacing="0"
                               width="100%">
                            <thead>
                            <tr>
                                <th class="min-desktop">角色ID</th>
                                <th class="min-desktop">角色名称</th>
                                <th class="min-desktop">角色所属公司</th>
                                <th class="min-desktop">角色机构.</th>
                                <th class="min-desktop">角色下的用户</th>
                                <th class="min-desktop">操作</th>
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

    <!-- 修改内容的弹出框 -->
    <div class="modal" tabindex="-1" role="dialog" id="myModal">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: 1px solid #ddd">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">角色名称修改界面</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="updateForm">
                        <input type="hidden" name="rid">
                        <input type="hidden" name="rbianma">
                        <input type="hidden" name="oid">
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label" >角色名：</label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="rname"  class="form-control" name="rname">
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

<!-- 修改内容的弹出框-->

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


<%-- 新增用户的模态框 --%>
<div class="modal" tabindex="-1" role="dialog" id="useradd">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i
                        class="pci-cross pci-circle"></i></button>
                <h4 class="modal-title">角色信息修改界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="formadd">
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色名称:</label>
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
        "react": {opacity: 0.7},
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
        $('#example1').dataTable({
            "ordering": false,  //关闭排序功能
            /* "processing": true,
            "serverSide": true,   开启后台服务排序分页查找  通过后台实现 */
            /* "processing": true,
             "serverSide": true,*/
            "searching": true,  // false  关闭搜索框
            "ajax": {
                "url": "../system/findAll",
                //默认为data,这里定义为空，则只需要传不带属性的数据
                "dataSrc": ""
            },
            "columns": [
                {
                    "data": "rid",
                    // visible:false 单独隐藏列
                    "visible": false
                },
                {"data": "rname"},
                {"data": "rbianma"},
                {"data": "oid", orderable: false},
                {
                    "data": "ruser", render: function (data) {
                        if (data > 0) {
                            return "该角色下有" + data + "个人，不能删除"
                        }
                        else {
                            return "<span style='color: red;font-weight: bold'>该角色下有" + data + "个人,可以删除</span>"
                        }

                    },
                },
                {
                    "data": null,
                    /*defaultContent  添加默认值*/
                    defaultContent: '<a href="javascript::##" class="xiugai"><i class="myfont icon-tianxie"></i></a>' +
                    '<a href="javascript::##" class="delbtn"><i class="myfont icon-shanchu"></i></a>' +
                    '<a href="javascript::##" class="showbtn"><i class="myfont icon-sousuo"></i></a>',
                    orderable: false  //关闭该列数据排序
                }
            ], language: {
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
<%-- 通过datatable 获取数据  表格1--%>

<%--  修改操作模态框 js --%>
<script>
    //修改操作  模态框
    $(function () {
        $("#example1").on("click", ".xiugai", function () {
            $("#myModal").modal('show');
            var thisindex = $(this).parent().parent().index();
            //构建datatable的变量  获取表格每行的数据
            t = $("#example1").DataTable();
            var rid = t.row(thisindex).data().rid;
            var rname = t.row(thisindex).data().rname;

            //把当前的数据付给弹出框
            $("#updateForm input[name=rname]").val(rname);
            $("#updateForm input[name=rid]").val(rid);
            //ajax调用后台
            $("#updateForm").on("click", "#xgbtn", function () {
                //判断  表单验证的 结果
                var vali=$("#formadd").data('bootstrapValidator').validate().isValid();
                if (!vali) {
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
            $("#example1").on("click", ".delbtn", function () {
                var $_this = $(this).parent().parent();
                //datatable取值，先获取行号
                var thisindex = $(this).parent().parent().index();
                //构建datatable的变量
                var t = $("#example1").DataTable();
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
        var dt = $("#example1").DataTable();
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
    $("#example1").on("click", ".showbtn", function () {
        $("#showModal").modal('show');
        var thisindex = $(this).parent().parent().index();
        //构建datatable的变量  获取表格每行的数据
        t = $("#example1").DataTable();
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
            url: "../system/updateroleuser",
            data: "uid=" + checkvalues,
            success: function (data) {
                if (data == true) {
                    $("#showModal").modal("hide");
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
        })
    });
</script>

</body>
</html>

