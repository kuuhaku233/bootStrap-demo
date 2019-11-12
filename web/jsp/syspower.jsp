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

    <title>权限管理页面</title>
    <style>
        .bootstrap-table .fixed-table-container .table tbody tr.selected td {
            background-color: inherit;
            color: inherit;
        }

        .roletog {
            background-color: #294f75 !important;
            color: #ffffff !important;
            color: inherit;
        }

        .otherrole {
            background-color: inherit !important;
            color: inherit !important;
        }
    </style>

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

<!--TIPS-->
<!--You may remove all ID or Class names which contain "demo-", they are only used for demonstration. -->
<body>
<div id="container" class="effect aside-float aside-bright mainnav-lg">

    <!--NAVBAR-->
    <!--===================================================-->
    <jsp:include page="common/header.jsp"></jsp:include>
    <!--===================================================-->
    <!--END NAVBAR-->

    <div class="boxed">

        <!--CONTENT CONTAINER-->
        <!--===================================================-->
        <div id="content-container">
            <div id="page-head">
                <div id="page-title">
                    <h1 class="page-header text-overflow">权限管理</h1>
                </div>
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <!--End page title-->

                <!--Breadcrumb-->
                <!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
                <ol class="breadcrumb">
                    <li><a href="../jsp/index.jsp"><i class="demo-pli-home"></i></a></li>
                    <li><a href="../jsp/index.jsp">系统管理</a></li>
                    <li class="active">权限管理</li>
                </ol>
            </div>


            <div id="page-content">

                <%-- 页面主体部分 --%>
                <div class="panel">
                    <div class="panel-body">
                        <div class="fixed-fluid">
                            <%-- 页面左侧部分 角色列表 --%>
                            <div class="fixed-sm-200 pull-sm-left fixed-right-border">

                                <div class="pad-btm bord-btm">
                                    <a class="btn btn-block btn-primary">角色列表</a>
                                </div>
                                <div class="list-group bg-trans pad-btm bord-btm" id="rolelist">

                                </div>


                            </div>
                            <div class="fluid">
                                <%-- 页面左侧部分 角色列表 结束--%>

                                <%-- 页面右侧部分 资源列表 --%>
                                <div id="demo-email-list">
                                    <div class="row">
                                        <div class="pad-btm bord-btm">
                                            <a class="btn btn-block btn-primary">资源列表</a>
                                        </div>
                                    </div>
                                    <ul id="demo-mail-list" class="mail-list pad-top bord-top">
                                        <div class="mar-btm" id="btntest1">
                                            <button class="btn btn-primary" id="savepower">保存</button>
                                            <button class="btn btn-danger">导出excel</button>
                                        </div>
                                        <table id="resource-table" class="table table-striped table-bordered"
                                               cellspacing="0"
                                               width="100%">
                                            <thead>
                                            <tr>
                                                <th></th>
                                                <th>reid</th>
                                                <th>资源名称</th>
                                                <th>资源链接</th>
                                                <th>资源图标</th>
                                                <th>状态</th>
                                            </tr>
                                            </thead>

                                        </table>
                                    </ul>
                                </div>
                                <%-- 页面右侧部分 资源列表 结束--%>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- 页面主体部分 --%>


            </div>

        </div>

        <%-- 引用页面左侧的导航栏 --%>
        <jsp:include page="common/nav.jsp"></jsp:include>
        <%-- 引用页面左侧的导航栏 --%>

    </div>


    <%-- 页脚部分 --%>
    <jsp:include page="common/footer.jsp"></jsp:include>
    <%-- 页脚部分 --%>


    <%-- 换肤按钮 --%>
    <button class="scroll-top btn">
        <i class="pci-chevron chevron-up"></i>
    </button>
    <%-- 换肤按钮 --%>


</div>

<!--jQuery -->
<script src="js/jquery.min.js"></script>

<!--BootstrapJS -->
<script src="js/bootstrap.min.js"></script>

<!--NiftyJS -->
<script src="js/nifty.min.js"></script>

<!--Demo script -->
<script src="js/demo/nifty-demo.min.js"></script>
<script src="plugins/datatables/media/js/jquery.dataTables.js"></script>
<script src="plugins/datatables/media/js/dataTables.bootstrap.js"></script>
<script src="plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>

<!--  datatable bootbox 表格插件 -->
<script src="js/demo/tables-datatables.js"></script>
<script src="plugins/bootbox/bootbox.min.js"></script>


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
            "hOffset": 30, "vOffset": 20,

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
<script>
    var $table = $('#resource-table')
    var rid='';
    //构建bootstrapTable
    $(function () {

        function ftb(rid){
            var reids=[];
            $table.bootstrapTable('destroy').bootstrapTable({
                destroy: true,
                //toolbar: "#btntest1",
                idField: "reid",//设置列为选中列
                url: "../system/getpwoerresource",
                locale: 'zh-CN',
                queryParams:"rid="+rid,
                pagination: true,//分页
                pageNumber: 1,//默认显示第1也
                pageSize: 10,//每页显示的数量
                pageList: [5, 10, 20, 50, 100],//设置每页显示的数量
                // search: true,//搜索
                //sidePagination: 'server',//设置服务器端分页*********************
                //showRefresh: true, //显示刷新按钮
                //showColumns: true,//显示列刷选
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
                        field: "powerreid",
                        formatter: function (val) {
                            if(val!=null) {
                                reids.push(val);
                                return '<span class="label label-info">拥有权限</span>'
                            }
                            else{
                                return '<span class="label label-danger">未拥有权限</span>'
                            }
                        },

                    },

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
                onLoadSuccess:function () {
                    $table.bootstrapTable('checkBy',{field:'reid',values:reids});
                }
            });
        }
        ftb(1);

        //查询出 所有的角色信息
        $(function () {
            $.ajax({
                url: '../system/findAll',
                success: function (data) {
                    if (data != null) {
                        for (var i = 0; i < data.length; i++)
                            $("#rolelist").append(
                                ' <a href="javascript:void(0)" class="list-group-item" id="' + data[i].rid + '">' + data[i].rname + ' </a>'
                            )
                    }
                }
            });

            //点击角色名称查出角色对应的权限信息
            $("#rolelist").on('click', 'a', function () {
                $(this).addClass("roletog");
                $(this).siblings().removeClass("roletog");
                 rid=$(this).attr("id");
                ftb(rid);
            })
            //

            //权限修改
            $("#savepower").on('click', function () {
                var selects=$table.bootstrapTable('getSelections');
                var reids=[];

                for(var i=0;i<selects.length;i++)
                {
                    reids.push(selects[i].reid);
                }
                console.log("rid:"+rid)
                console.log("reids:"+reids)
                $.ajax({
                    url:'../system/updaterolepower',
                    data:{
                        reids:reids.toString(),
                        rid:rid
                    },
                    success:function (data) {
                        if(data)
                        {
                            $.niftyNoty({
                                type: 'info',
                                icon : 'pli-exclamation icon-2x',
                                message : '修改权限成功',
                                container : 'floating',
                                timer : 3000
                            });

                        }
                    }
                })
                ftb(rid);
            })


        });



    })



</script>

</body>
</html>
