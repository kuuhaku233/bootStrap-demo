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
    <link href="plugins/bootstrap-table/extensions/treegrid/jquery.treegrid.css"  rel="stylesheet">


    <!--Bootstrap Validator 表单验证-->
    <link href="plugins/bootstrap-validator/bootstrapValidator.min.css" rel="stylesheet">

    <link rel="Shortcut Icon" href="" type="image/x-icon" />
    <link rel="icon" type="image/png" href="/tgyj/systementry/img/favicon.png">
    <!--JSTree [ OPTIONAL ]-->
    <link href="plugins/jstree/themes/default/style.min.css" rel="stylesheet">
    <!--Font Awesome [ OPTIONAL ]-->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
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

                            <table id="resource-table" class="table table-striped table-bordered" cellspacing="0" width="100%">
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


        <div class="modal" tabindex="-1" role="dialog" id="ditu">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="border-bottom: 1px solid #ddd">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="pci-cross pci-circle"></i></button>
                        <h4 class="modal-title">地图信息</h4>
                    </div>
                    <div class="modal-body">
                        <div id="dituContent" style="width:100%;height:550px;border:#ccc solid 1px;"></div>
                    </div>

                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

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
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class="pci-cross pci-circle"></i></button>
                    <h4 class="modal-title">系统资源修改界面</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="formupdate">
                        <input type="hidden" name="reid">
                        <input type="hidden" name="rejigouid">
                        <input type="hidden" name="reopjigouid">
                        <div class="panel-body">
                            <div class="form-group">
                                <label class="col-sm-3 control-label" >资源名称：</label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="资源名称："  class="form-control" name="resourcename">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label" >资源链接：</label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="资源链接："  class="form-control" name="relink">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label" >资源图标：</label>
                                <div class="col-sm-9">
                                    <input type="text" placeholder="资源图标："  class="form-control" name="rebianhao">
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

    <%--datatable--%>
    <script>

        $(function () {
            window.operateEvents = {
                //修改方法
                'click .xiugai': function (e, value, row, index) {
                    $("#formupdate input[name=reid]").val(row.reid);
                    $("#formupdate input[name=resourcename]").val(row.resourcename);
                    $("#formupdate input[name=relink]").val(row.relink);
                    $("#formupdate input[name=rebianhao]").val(row.rebianhao);
                    $("#xgbtn").on("click",function () {
                        $.ajax({
                            url: "../system/testupdate",
                            data:$("#formupdate").serialize(),
                            success:function (data) {
                                if(data!=null){
                                    $("#xiugai").modal('hide');
                                    $table.bootstrapTable('refresh');
                                    console.log(data);

                                   /* $table.bootstrapTable('updateByUniqueId', {
                                        id: row.reid,
                                        row: {
                                            reid:"reid",
                                            resourcename:"resourcename",
                                            relink:"relink",
                                            rebianhao:"rebianhao",
                                            rejigouid:"rejigouid",
                                            reopjigouid:"reopjigouid"
                                        }
                                    });*/
                                }
                            }
                        })

                    })

                },

                //删除方法
                'click .shanchu': function (e, value, row, index) {
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
                                    url:"../system/deleresourcemess",
                                    data:"reid="+row.reid,
                                    success:function (data) {
                                        if(data){
                                            $table.bootstrapTable('remove', {
                                                field: 'reid',
                                                values: [row.reid]
                                            })
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
            }

            $table = $('#resource-table')
            //构建datatable
            $table.bootstrapTable('destroy').bootstrapTable({
                destroy:true,
                 toolbar:"#btntest1",
                 idField: "reid",//设置列为选中列
                url: "../system/getresource",
                 locale: 'zh-CN',
                pagination: true,//分页
                 pageNumber:1,//默认显示第1也
                 pageSize:10,//每页显示的数量
                 pageList: [5, 10, 20, 50, 100],//设置每页显示的数量
                 search: true,//搜索
                 sidePagination:'server',//设置服务器端分页*********************
                 showRefresh:true, //显示刷新按钮
                 showColumns:true,//显示列刷选

                 striped: true,
                columns: [
                    {
                        checkbox:true,

                    },
                    {
                        field:"reid",
                        visible:false,
                    },
                    {
                        field: "resourcename",
                    },
                    {
                        field: "relink",
                    },
                    {
                        field: "rebianhao",
                        formatter:function(val){
                            return '<span class="'+val+'"></span>'
                        },
                        sortable:true,

                    },
                    {
                        field: "rejigouid",
                        formatter:function (val,row) {
                            if(val==0){
                                return '<div class="label label-table label-danger">一级资源</div>'
                            }else if(val==1){
                                return '<div class="label label-table label-success">二级资源</div>'
                            }else if(val==2){
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
                        formatter:function (value, row, index) {

                            return '<a href="javascript:void(0)" class="xiugai" data-target="#ditu" data-toggle="modal" ><i class="myfont icon-tianxie"></i></a>' +
                                '<a href="javascript:void(0)" class="shanchu" reid="'+row.reid+'"><i class="myfont icon-shanchu"></i></a>'
                        }
                    }
                ],
                treeShowField: 'resourcename',
                parentIdField: 'reopjigouid',

                onResetView: function(data) {

                    $table.treegrid({
                        initialState: 'expanded',// 所有节点都折叠
                        // initialState: '',// 所有节点都展开，默认展开
                        treeColumn: 1,
                         expanderExpandedClass: 'glyphicon glyphicon-triangle-right',  //图标样式
                        expanderCollapsedClass: 'glyphicon glyphicon-triangle-bottom',
                        onChange: function() {
                            $table.bootstrapTable('resetWidth');
                        }
                    });

                    //只展开树形的第一级节点
                    $table.treegrid('getRootNodes').treegrid('expand');

                },



            });



        })




    </script>

    <script type="text/javascript">
        //创建和初始化地图函数：
        function initMap(){
            createMap();//创建地图
            setMapEvent();//设置地图事件
            addMapControl();//向地图添加控件
            addMarker();//向地图中添加marker
        }

        //创建地图函数：
        function createMap(){
            var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
            var point = new BMap.Point(112.712099,34.095494);//定义一个中心点坐标
            map.centerAndZoom(point,8);//设定地图的中心点和坐标并将地图显示在地图容器中
            window.map = map;//将map变量存储在全局
        }

        //地图事件设置函数：
        function setMapEvent(){
            map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
            map.enableScrollWheelZoom();//启用地图滚轮放大缩小
            map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
            map.enableKeyboard();//启用键盘上下左右键移动地图
        }

        //地图控件添加函数：
        function addMapControl(){
            //向地图中添加比例尺控件
            var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
            map.addControl(ctrl_sca);
        }

        //标注点数组
        var markerArr = [{title:"河南省郑州市",content:"到达郑州，下一站发往洛阳",point:"113.616181|34.781907",isOpen:0,icon:{w:23,h:25,l:0,t:21,x:9,lb:12}}
            ,{title:"河南省洛阳市(终点)",content:"从郑州发往洛阳",point:"112.449938|34.675103",isOpen:0,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}
        ];
        //创建marker
        function addMarker(){
            for(var i=0;i<markerArr.length;i++){
                var json = markerArr[i];
                var p0 = json.point.split("|")[0];
                var p1 = json.point.split("|")[1];
                var point = new BMap.Point(p0,p1);
                var iconImg = createIcon(json.icon);
                var marker = new BMap.Marker(point,{icon:iconImg});
                var iw = createInfoWindow(i);
                var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
                marker.setLabel(label);
                map.addOverlay(marker);
                label.setStyle({
                    borderColor:"#808080",
                    color:"#333",
                    cursor:"pointer"
                });

                (function(){
                    var index = i;
                    var _iw = createInfoWindow(i);
                    var _marker = marker;
                    _marker.addEventListener("click",function(){
                        this.openInfoWindow(_iw);
                    });
                    _iw.addEventListener("open",function(){
                        _marker.getLabel().hide();
                    })
                    _iw.addEventListener("close",function(){
                        _marker.getLabel().show();
                    })
                    label.addEventListener("click",function(){
                        _marker.openInfoWindow(_iw);
                    })
                    if(!!json.isOpen){
                        label.hide();
                        _marker.openInfoWindow(_iw);
                    }
                })()
            }
        }
        //创建InfoWindow
        function createInfoWindow(i){
            var json = markerArr[i];
            var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
            return iw;
        }
        //创建一个Icon
        function createIcon(json){
            var icon = new BMap.Icon("http://map.baidu.com/image/us_cursor.gif", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
            return icon;
        }

        initMap();//创建和初始化地图
    </script>




</body>
</html>

