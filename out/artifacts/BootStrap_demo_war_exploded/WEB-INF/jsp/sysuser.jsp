<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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

    <title>用户管理页面</title>

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


    <!--DataTables [ OPTIONAL ]-->
    <link href="plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet">
    <link href="plugins/datatables/extensions/Responsive/css/responsive.dataTables.min.css" rel="stylesheet">

    <!--Bootstrap Validator 表单验证-->
    <link href="plugins/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">
    <%-- 引入bootstrap select的css --%>
    <link href="plugins/bootstrap-select/bootstrap-select.css" rel="stylesheet">


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
                    <h1 class="page-header text-overflow">用户管理</h1>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->


                <!--Breadcrumb-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <ol class="breadcrumb">
                    <li><a href="#"><i class="demo-pli-home"></i></a></li>
                    <li><a href="#">系统管理</a></li>
                    <li class="active">用户管理</li>
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
                        <div class="mar-btm">
                            <shiro:hasPermission name="../link/add">
                            <button class="btn btn-primary" id="add">新增</button>
                            </shiro:hasPermission>
                            <button class="btn btn btn-danger" id="batchdelete">导出excel</button>
                        </div>
                        <div class="alert alert-mint" style="text-align: center;display: none" id="quanxuantishi">
                            <strong>已选择本页的<span id="pagesize"></span>条数据, <a href="#" class="alert-link"
                                                                             style="font-weight: 400" id="quanbuxuanze">勾选全部的
                                <span id="totalsize"></span> 数据</a></strong>
                        </div>
                        <table id="demo-dt-basic" class="table table-striped table-bordered" cellspacing="0"
                               width="100%">
                            <thead>
                            <tr>
                                <th><input type="checkbox" name="allusers" id="checkAll"></th>
                                <th>用户名</th>
                                <th>密码</th>
                                <th>邮箱</th>
                                <th>手机号</th>
                                <th>注册地址</th>
                                <th>注册时间</th>
                                <th>登陆时间</th>
                                <th>上次登陆时间</th>
                                <th>登陆次数</th>
                                <th>格言</th>
                                <th>角色id</th>
                                <th>组织结构</th>
                                <th>opid</th>
                                <th>操作</th>
                            </tr>
                            </thead>

                        </table>
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
<div class="modal" tabindex="-1" role="dialog" id="userxiugai">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="border-bottom: 1px solid #ddd">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i
                        class="pci-cross pci-circle"></i></button>
                <h4 class="modal-title">用户数据修改界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="formupdate">
                    <input type="hidden" name="uid">
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">用户名：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="username" class="form-control" name="username">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="password" class="form-control" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">邮箱：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="email" class="form-control" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">手机号：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="phone" class="form-control" name="phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">注册地址：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="register_address" class="form-control"
                                       name="register_address">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">注册时间：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="register_time" class="form-control"
                                       name="register_time">
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
                <h4 class="modal-title">用户数据添加界面</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="formadd">

                    <div class="panel-body">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">用户名：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="username" class="form-control" name="username">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">密码：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="password" class="form-control" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">邮箱：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="email" class="form-control" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">手机号：</label>
                            <div class="col-sm-9">
                                <input type="text" placeholder="phone" class="form-control" name="phone">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">角色：</label>
                            <div class="col-sm-9">
                                <select class="selectpicker" name="roleid" class="form-control" id="select2">

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


<!--jQuery [ REQUIRED ]-->
<script src="js/jquery.min.js"></script>
<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>
<!--NiftyJS [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>
<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>


<!--DataTables [ OPTIONAL ]-->
<script src="plugins/datatables/media/js/jquery.dataTables.js"></script>
<script src="plugins/datatables/media/js/dataTables.bootstrap.js"></script>
<script src="plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>

<script src="plugins/bootbox/bootbox.min.js"></script>

<!--Bootstrap Validator 表单验证-->
<script src="plugins/bootstrap-validator/bootstrapValidator.min.js"></script>
<%-- 引入bootstrap select的插件--%>
<script src="plugins/bootstrap-select/bootstrap-select.js"></script>
<%-- Live2D 看板动画 --%>
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

<%-- datatable数据的获取 --%>
<script>

    $(function () {
        //构建datatable
        var dt = $("#demo-dt-basic").DataTable({
            //会有参数，用来开启datatable的相关功能
            "ordering": true,
            "processing": true,
            "serverSide": true,//开启服务器端处理
            searching: false,
            ajax: {
                url: "../system/getsysusers",
                dataSrc: "data",
            },

            columns: [
                {
                    data: "uid",
                    visible: true,//隐藏列
                    orderable: false,//排序
                    render: function (data, type, row, meta) {
                        return '<input type="checkbox" id=' + data + ' value=' + data + ' name="checkusers">'
                        /* <input type="checkbox" name="checkusers" id='+data+' value='+data+'> */
                    }
                    //title:"点击删除",//改变th表头的值

                },
                {
                    data: "username",
                    orderable: false,
                },
                {
                    data: "password",
                    orderable: false,
                },
                {
                    data: "email",
                    orderable: false,
                },
                {
                    data: "phone",
                    orderable: false,
                },
                {
                    data: "register_address",
                    orderable: false,
                },
                {
                    data: "register_time",
                    orderable: true,
                    render: function (data, type, row, meta) {
                        return new Date(data).format("yyyy-MM-dd hh:mm:ss")
                    }
                },
                {
                    data: "login_time",
                    orderable: false,
                },
                {
                    data: "last_login_time",
                    orderable: false,
                },
                {
                    data: "login_count",
                    orderable: false,
                    visible: false
                },
                {
                    data: "signed",
                    orderable: false,
                },
                {
                    data: "roleid",
                    orderable: false,
                },
                {
                    data: "organizeid",
                    orderable: false,
                    visible: false
                },
                {data: "opid", visible: false},
                {
                    data: null,
                    orderable: false,
                    defaultContent: '<shiro:hasPermission name="../link/update_btn"><a href="javascript::##" class="xiugai" ><i class="myfont icon-tianxie"></i></a></shiro:hasPermission>' +
                        '<shiro:hasPermission name="../link/delete_btn"><a href="javascript::##" class="shanchu" ><i class="myfont icon-shanchu"></i></a></shiro:hasPermission>'
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

            //处理列数据，跟下面的区别，下面写法更整洁，


            //批量处理相同的内容
            /* columnDefs: [{
                 targets: [0],
                 orderable: false,
                 visible: false,
             }]*/
        });

        //修改用户信息
        $("#demo-dt-basic").on("click", ".xiugai", function () {

            $("#userxiugai").modal("show");
            //var $_this=$(this).parent().parent();
            //var username=$_this.children().eq(0).text();自己写的JavaScript获取值，获取不到隐藏值


            //datatable取值，先获取行号
            var thisindex = $(this).parent().parent().index();
            //构建datatable的变量
            var t = $("#demo-dt-basic").DataTable();
            var uid = t.row(thisindex).data().uid;
            var username = t.row(thisindex).data().username;
            var password = t.row(thisindex).data().password;
            var email = t.row(thisindex).data().email;
            var phone = t.row(thisindex).data().phone;
            var register_address = t.row(thisindex).data().register_address;
            var register_time = t.row(thisindex).data().register_time;

            //把当前的数据付给弹出框
            $("#userxiugai input[name=uid]").val(uid)
            $("#userxiugai input[name=username]").val(username)
            $("#userxiugai input[name=password]").val(password)
            $("#userxiugai input[name=email]").val(email)
            $("#userxiugai input[name=phone]").val(phone)
            $("#userxiugai input[name=register_address]").val(register_address)
            $("#userxiugai input[name=register_time]").val(register_time)

            $("#xgbtn").off("click").on("click", function () {
                var vali = $("#formadd").data('bootstrapValidator').validate().isValid();
                if (vali) {
                    $.ajax({
                        url: "../system/updateusermess",
                        data: $("#formupdate").serialize(),
                        success: function (data) {
                            if (data == true) {
                                $("#userxiugai").modal("hide");
                                $(dt.row(thisindex).node()).animate({
                                    left: '250px',
                                    opacity: '0.5',
                                    height: '150px',
                                    width: '150px'
                                }, 3000);
                                dt.draw(false);
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
                }

            })

        })

        //删除用户信息
        $("#demo-dt-basic").on("click", ".shanchu", function () {
            var $_this = $(this).parent().parent();
            //datatable取值，先获取行号
            var thisindex = $(this).parent().parent().index();
            //构建datatable的变量
            var t = $("#demo-dt-basic").DataTable();
            var uid = t.row(thisindex).data().uid;
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
                            url: "../system/deleteusermess",
                            data: "uid=" + uid,
                            success: function (data) {
                                if (data) {

                                    $_this.hide(1000);
                                    dt.draw(false);

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
        })


        //新增弹出框打开之前
        $("#add").on("click", function () {
            $("#select2").empty();
            //新增数据前 查询出角色信息
            $.ajax({
                url: "../system/findAll",
                success: function (data) {
                    for (var i = 0; i < data.length; i++) {
                        $("#select2").append(
                            '<option value="' + data[i].rid + '">' + data[i].rname + '</option>'
                        )
                    }
                    $('#select2').selectpicker('refresh');
                    $('#select2').selectpicker('render');
                }

            })
            $("#useradd").modal("show");

        })

        //新增用户
        $("#addbaocun").on("click", function () {
            var vali = $("#formadd").data('bootstrapValidator').validate().isValid();
            if (vali) {
                $.ajax({
                    url: "../system/addusermess",
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
                        dt.draw(false);
                    }
                })
            }

        })

    })


</script>

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

<%-- 复选框的处理 --%>
<script>
    //存放选中的uid集合
    var checkedIds = [];
    var tempcheckedIds = [];
    $(function () {

        //总记录条数
        var totalsize
        //当前页显示的数据
        var pagesize
        //全选
        $("#checkAll").click(function () {

            //获取总的记录条数
            totalsize = $('#demo-dt-basic').DataTable().page.info().recordsTotal;
            $("#totalsize").text(totalsize);
            //获取当前页数据
            pagesize = $('#demo-dt-basic').DataTable().page.info().length;
            $("#pagesize").text(pagesize);
            if ($(this).is(':checked')) {
                checkedIds = [];
                $('input[name="checkusers"]').each(function () {
                    $(this).prop("checked", true);
                    $("#demo-dt-basic tbody tr").addClass('tog')
                    //把当前页的id放入集合中
                    checkedIds.push($(this).attr("id"));
                    if (pagesize < totalsize) {


                        //展开提示信息
                        $("#quanxuantishi").slideDown();
                    }

                });
                console.log(checkedIds)
            } else {
                $('input[name="checkusers"]').each(function () {
                    $(this).prop("checked", false);
                    $("#demo-dt-basic tbody tr").removeClass('tog')
                    //清空集合中的id
                    checkedIds = [];

                    //清空提示信息显示的内容 
                    var newstrong = '已选择本页的<span id="pagesize"></span>条数据,  <a href="#" class="alert-link" style="font-weight: 400" id="quanbuxuanze">勾选全部的 <span id="totalsize"></span> 数据</a>'
                    $("#quanxuantishi strong").html(newstrong);
                    $("#quanxuantishi").slideUp();


                });
                console.log(checkedIds);
            }


        });

        //单选完毕改变状态全选
        $("#demo-dt-basic tbody").on("click", '[name=checkusers]:checkbox', function () {

            //定义一个临时变量，避免重复使用同一个选择器选择页面中的元素，提升程序效率。
            var $tmp = $('[name=checkusers]:checkbox');

            //用filter方法筛选出选中的复选框。并直接给CheckedAll赋值。
            $('#checkAll').prop('checked', $tmp.length == $tmp.filter(':checked').length);


            if ($(this).prop('checked')) {

                checkedIds.push($(this).attr("id"));


            } else {
                for (var i = 0; i < checkedIds.length; i++) {

                    if ($(this).attr("id") == checkedIds[i]) {
                        $("#quanxuantishi").slideUp();
                        checkedIds.splice(i, 1);
                        break;
                    }
                }
            }

            console.log(checkedIds);

        });

        //勾选全部数据处理，分页全选
        $("#quanxuantishi").on("click", "#quanbuxuanze", function () {
            var newstrong = "已选择全部的" + totalsize + "条记录   <a class='alert-link' href='javascript::#' id='quxiaoquanxuan'>取消全选</a>"
            $("#quanxuantishi strong").html(newstrong);
            //全选后直接放入当前的机构id，删除该机构下所有数据即可
            /* var oid=$("#oid").val();*/
            tempcheckedIds = checkedIds;
            checkedIds = [];
            //放入一个all作为判断的依据
            checkedIds.push('all');
            /* checkedIds.push(oid);*/
            console.log(checkedIds);
            return false;

        });
        //取消全选
        $("#quanxuantishi").on("click", "#quxiaoquanxuan", function () {
            var newstrong = '已选择本页的<span id="pagesize"></span>条数据,  <a href="#" class="alert-link" style="font-weight: 400" id="quanbuxuanze">勾选全部的 <span id="totalsize"></span> 数据</a>'
            $("#quanxuantishi strong").html(newstrong);
            //全选后直接放入当前的机构id，删除该机构下所有数据即可
            $("#totalsize").text(totalsize);

            $("#pagesize").text(pagesize);
            checkedIds = tempcheckedIds;
            tempcheckedIds = [];

            console.log(checkedIds);
            return false;

        });

        //分页记录全选，监听datatable的绘制事件
        $('#demo-dt-basic').on('draw.dt', function () {
            //判断chekedIds的第一个值是否为all，是的话默认页面跳转后复选框选中
            if (checkedIds[0] != null && checkedIds[0] == "all") {

                $("input[name='checkusers']").each(function () {

                    $(this).prop("checked", true)

                    $("#demo-dt-basic tbody tr").addClass('tog')


                })
            }
        });


    });
</script>
<%-- 导出Excle --%>
<script>
    $("#batchdelete").click(function () {
        if (checkedIds == "" || checkedIds.length == 0) {
            bootbox.alert({
                message: "没有选中数据，请选择要导出的数据",
                size: "small",

            });
        } else {
            window.location.href = '../export/excelchukusc?idList=' + checkedIds
        }
    })
</script>


</body>
</html>

