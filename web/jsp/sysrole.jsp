<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath(); //  path = "/travel"
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/bst/";
%>
<!DOCTYPE html>
<html lang="en">


<head>
    <base href=" <%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>角色管理页面</title>

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
					<li class="active">角色管理</li>
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
                                <button class="btn btn-primary" data-toggle="modal" data-target="#useradd">新增</button>
                            </div>
					        <table id="demo-dt-basic" class="table table-striped table-bordered" cellspacing="0" width="100%">
					            <thead>
					                <tr>
					                    <th>角色id</th>
					                    <th>角色名称</th>
                                        <th>角色所属公司</th>
                                        <th>角色机构</th>
                                        <th>角色下的用户</th>
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
    <div class="modal" tabindex="-1" role="dialog" id="rolexiugai">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: 1px solid #ddd">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">角色名称修改界面</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="formupdate">
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

    <%--新增弹出框--%>
    <div class="modal" tabindex="-1" role="dialog" id="useradd">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="border-bottom: 1px solid #ddd">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">角色数据添加界面</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="formadd">

                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label" >角色名称：</label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="角色名称"  class="form-control" name="rname">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" >角色所属公司：</label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="角色所属公司"  class="form-control" name="rbianma">
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
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="pci-cross pci-circle"></i></button>
                    <h4 class="modal-title">角色用户信息界面</h4>
                </div>
                <div class="modal-body">
                    <div class="mar-btm">
                        <h4 class="modal-title">角色名称：<span id="rolename" style="color: red"></span></h4>
                        <button class="btn-danger btn" disabled id="xiugaiyonghu">修改用户</button>
                    </div>
                    <hr>
                    <table id="roleusermess" class="table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th><input class="" id="CheckedAll" type="checkbox" checked="true"></th>
                            <th>uid</th>
                            <th>用户名</th>
                            <th>邮箱</th>
                            <th>手机号</th>
                            <th>注册地址</th>
                            <th>注册时间</th>
                            <th>格言</th>
                            <th>操作</th>
                        </tr>
                        </thead>

                    </table>
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
                fields:{
                    username:{
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
                    password:{
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
                    email:{
                        validators: {
                            notEmpty: {
                                message: '邮箱不能为空'
                            },
                            emailAddress: {
                                message: '邮箱地址格式有误'
                            }
                        }
                    },

                    phone:{
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
                                data:""
                            }

                        }
                    },
                    register_address:{
                        validators: {
                            notEmpty: {
                                message: '注册地址不能为空'
                            }
                        }
                    },
                    register_time:{
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

    <script>
        //构建datatable
        $(function () {
            //构建datatable
            var dt=$("#demo-dt-basic").DataTable({
                //会有参数，用来开启datatable的相关功能
                "ordering": true,
                "processing": true,
                //"serverSide": true,//开启服务器端处理
                searching :true,
                ajax:{
                    "url": "../system/findAll",
                    dataSrc:"",
                },

                columns: [
                    { data: "rid" ,
                        visible:false,//隐藏列
                        orderable:false,//排序

                    },
                    { data: "rname" ,
                        orderable:false,
                    },
                    { data: "rbianma",
                        orderable:false,
                    },
                    { data: "oid",
                        orderable:false,
                    },
                    { data: "ruser" ,
                        orderable:false,
                        render:function (data,type,row,meta) {
                            if(data>0){
                                return "该角色下有"+data+"个人,不能删除该角色"
                            }
                                return "<span style='color:red'>该角色下有"+data+"个人,可以删除该角色</span>"
                            
                        }
                    },

                    {
                        data:null,
                        orderable:false,
                        defaultContent:'<a href="javascript::##" class="xiugai" ><i class="myfont icon-tianxie"></i></a>'+
                        '<a href="javascript::##" class="shanchu" ><i class="myfont icon-shanchu"></i></a>'+
                            '<a href="javascript::##" class="chakan" ><i class="myfont icon-sousuo"></i></a>'
                    }
                ],
                language:{
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

            //修改角色信息
            $("#demo-dt-basic").on("click",".xiugai",function () {

                $("#rolexiugai").modal("show");

                //datatable取值，先获取行号
                var thisindex =$(this).parent().parent().index();
                //构建datatable的变量
                var t=$("#demo-dt-basic").DataTable();
                var rid=t.row(thisindex).data().rid;
                var rname =t.row(thisindex).data().rname;

                //把当前的数据付给弹出框
                $("#rolexiugai input[name=rid]").val(rid)
                $("#rolexiugai input[name=rname]").val(rname)

                $("#xgbtn").on("click",function () {
                    var vali=$("#formupdate").data('bootstrapValidator').validate().isValid();
                    if(vali){
                        $.ajax({
                            url: "../system/update",
                            data:$("#formupdate").serialize(),
                            success:function (data) {
                                if(data==true){
                                    $("#rolexiugai").modal("hide");

                                    $.niftyNoty({
                                        type: 'info',
                                        icon : 'pli-exclamation icon-2x',
                                        message : '修改数据成功',
                                        container : 'floating',
                                        timer : 3000
                                    });
                                    dt.ajax.reload();

                                }
                            }
                        })
                    }

                })

            })

            //删除角色信息
            $("#demo-dt-basic").on("click",".shanchu",function () {
                var $_this=$(this).parent().parent();
                //datatable取值，先获取行号
                var thisindex =$(this).parent().parent().index();
                //构建datatable的变量
                var t=$("#demo-dt-basic").DataTable();
                var rid=t.row(thisindex).data().rid;
                var ruser =t.row(thisindex).data().ruser;
                if(ruser>0){
                    bootbox.alert("该角色还存在用户，不能删除");
                }else{
                    bootbox.confirm({
                        size:"small",
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
                            if(result){
                                $.ajax({
                                    url: '../system/delete',
                                    data:"rid="+rid,
                                    success:function (data) {
                                        if(data){

                                            $_this.hide(1000);
                                            dt.ajax.reload();

                                            $.niftyNoty({
                                                type: 'info',
                                                icon : 'pli-exclamation icon-2x',
                                                message : '删除数据成功',
                                                container : 'floating',
                                                timer : 3000
                                            });

                                        }
                                    }
                                })
                            }
                        }
                    })
                }

            })

            //新增角色
            $("#addbaocun").on("click" ,function () {
                var vali=$("#formadd").data('bootstrapValidator').validate().isValid();

                if(vali){
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
                }

            })

            //查看角色下人员
            $("#demo-dt-basic").on("click",".chakan",function () {
                //获取当前点击的行数
                var thisis=$(this).parent().parent().index();
                var rname =dt.row(thisis).data().rname;
                var rid=dt.row(thisis).data().rid;
                $("#roleusers").modal("show");
                $("#rolename").text(rname);
                dt12(rid);

            })

        })

        //构建datatable展示角色下的人员
        function dt12(rid){

            $('#roleusermess').DataTable({
                destroy:true,
                "ordering": true,  //关闭排序功能
                /* "processing": true,
                "serverSide": true,   开启后台服务排序分页查找  通过后台实现 */
                /* "processing": true,
                 "serverSide": true,*/
                "searching": true,  // false  关闭搜索框
                "ajax": {
                    "url": "../system/getroleuser?rid=" + rid,
                    //默认为data,这里定义为空，则只需要传不带属性的数据
                    "dataSrc": "",

                },
                "order": [[ 5, "desc" ]],
                "columns": [
                    {
                        data:"uid",
                        render:function (data) {

                            return '<input  class="dfcheckbox" type="checkbox" name="uidcheck" value="'+data+'" checked="true" >'
                        },
                        orderable: false,//排序
                    },
                    {
                        data: "uid",
                        visible: false,//隐藏列
                        orderable: false,//排序

                    },
                    {"data": "username",},
                    {"data": "email",orderable: false},
                    {"data": "phone"},
                    {"data": "register_address", },
                    {"data": "register_time", },
                    {"data": "signed",orderable: false },
                    {
                        "data": null,
                        /*defaultContent  添加默认值*/
                        defaultContent: '<a href="javascript::##" class="xiugai"><i class="myfont icon-tianxie"></i></a>' +
                        '<a href="javascript::##" class="delbtn"><i class="myfont icon-shanchu"></i></a>',
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
        }



    </script>

    <%--处理复选框的全选问题--%>
    <script>

        var checkvalues=["ALL"];

        //全选按钮的点击
        $("#CheckedAll").click(function(){
            $("#xiugaiyonghu").prop("disabled",false);
            //所有checkbox跟着全选的checkbox走。
            $('[name=uidcheck]:checkbox').prop("checked", this.checked );
            //判断一下是否是选中状态
            if($("#CheckedAll").prop("checked")){

                checkvalues=["ALL"]


            }else{
                checkvalues=[];

            }
        });

        //单个复选框点击
        $("#roleusermess").on("click",".dfcheckbox",function(){
            $("#xiugaiyonghu").prop("disabled",false);
            //定义一个临时变量，避免重复使用同一个选择器选择页面中的元素，提升程序效率。
            var $tmp=$('[name=uidcheck]:checkbox');
            //用filter方法筛选出选中的复选框。并直接给CheckedAll赋值。
            $('#CheckedAll').prop('checked',$tmp.length==$tmp.filter(':checked').length);

            if($(this).prop("checked")){
                for(var i=0;i<checkvalues.length;i++){
                    if($(this).val()==checkvalues[i]){
                        checkvalues.splice(i,1);
                        break;
                    }
                }

            }else{

                checkvalues.push($(this).val());

            }


        });

        $("#xiugaiyonghu").click(function () {
            $.ajax({
                url: "../system/updateroleuser",
                data: "uid=" + checkvalues,
                success:function (data) {
                    $("#roleusers").modal("hide");
                    $.niftyNoty({
                        type: 'info',
                        icon : 'pli-exclamation icon-2x',
                        message : '修改数据成功',
                        container : 'floating',
                        timer : 3000
                    });
                }
            })
        })

    </script>


</body>
</html>

