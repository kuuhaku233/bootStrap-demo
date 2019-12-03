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

    <title>管理系统首页</title>


    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">

    <!--字体图标-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">

    <!--页面加载进度条-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>

    <!--demo的css-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">
    <%--<link href="css/themes/type-full/theme-dark-full.css" rel="stylesheet">   改变颜色--%>

</head>

<body>
<div id="container" class="effect aside-float aside-bright mainnav-lg">

    <!--头部导航-->
    <jsp:include page="common/header.jsp"></jsp:include>
    <!--头部导航结束-->

    <div class="boxed">

        <!--右边核心显示区域-->
        <div id="content-container">
            <div id="page-head">

                <div class="pad-all text-center">
                    <h3>Welcome back to the Dashboard.</h3>
                    <p>Scroll down to see quick links and overviews of your Server, To do list, Order status or get some
                        Help using Nifty.</p>
                </div>
            </div>


            <!--Page content-->
            <!--===================================================-->
            <div id="page-content">




                <!-- Morris JS Full Content -->
                <!---------------------------------->
                <div class="panel">
                    <div class="panel-body">
                        <div id="echar3" class="morris-full-content" style="height: 800px;width: 100%"></div>
                    </div>
                </div>
                <!---------------------------------->


                <div class="row">
                    <div class="col-md-6">


                        <!-- Area Chart -->
                        <!---------------------------------->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">第一个图形</h3>
                            </div>
                            <div class="pad-all">
                                <div id="echars-bar1" style="height:268px"></div>
                            </div>
                        </div>
                        <!---------------------------------->


                    </div>
                    <div class="col-md-6">

                        <!-- Line Chart -->
                        <!---------------------------------->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Line Chart</h3>
                            </div>
                            <div class="pad-all">
                                <div id="echar2" style="height:268px"></div>
                            </div>
                        </div>
                        <!---------------------------------->


                    </div>
                </div>
                <div class="row">
                    <div class="col-md-7">


                        <!-- Bar Chart -->
                        <!---------------------------------->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Bar Chart</h3>
                            </div>
                            <div class="panel-body">
                                <div id="demo-morris-bar" style="height: 250px"></div>
                            </div>
                        </div>
                        <!---------------------------------->


                    </div>
                    <div class="col-md-5">


                        <!-- Donut Chart -->
                        <!---------------------------------->
                        <div class="panel">
                            <div class="panel-heading">
                                <h3 class="panel-title">Donut Chart</h3>
                            </div>
                            <div class="panel-body">
                                <div id="demo-morris-donut" class="morris-donut" style="height: 250px"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!---------------------------------->


            </div>
            <!--===================================================-->
            <!--End page content-->

        </div>
        <!--右边核心显示区域结束-->

        <!--右侧导航-->
        <jsp:include page="common/aside.jsp"></jsp:include>
        <!--右侧导航结束-->


        <!--左侧导航-->
        <jsp:include page="common/nav.jsp"></jsp:include>
        <!--左侧导航结束-->

    </div>


    <!-- FOOTER -->
    <footer id="footer">


        <div class="show-fixed pad-rgt pull-right">
            You have <a href="#" class="text-main"><span class="badge badge-danger">3</span> pending action.</a>
        </div>


        <div class="hide-fixed pull-right pad-rgt">
            14GB of <strong>512GB</strong> Free.
        </div>


        <p class="pad-lft">&#0169; 2019 Your Company</p>


    </footer>
    <!-- END FOOTER -->

    <!-- SCROLL PAGE BUTTON -->
    <button class="scroll-top btn">
        <i class="pci-chevron chevron-up"></i>
    </button>

</div>

<!--jQuery [ REQUIRED ]-->
<script src="js/jquery.min.js"></script>

<script src="js/echarts.js"></script>
<script src="js/echarts.min.js"></script>
<script src="js/map.js"></script>
<!--BootstrapJS [ RECOMMENDED ]-->
<script src="js/bootstrap.min.js"></script>

<!--NiftyJS [ RECOMMENDED ]-->
<script src="js/nifty.min.js"></script>

<!--Demo script [ DEMONSTRATION ]-->
<script src="js/demo/nifty-demo.min.js"></script>

<!--Flot Chart [ OPTIONAL ]-->
<script src="plugins/flot-charts/jquery.flot.min.js"></script>
<script src="plugins/flot-charts/jquery.flot.resize.min.js"></script>
<script src="plugins/flot-charts/jquery.flot.tooltip.min.js"></script>

<!--Sparkline [ OPTIONAL ]-->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>

<%-- 引入Echars的js --%>


<!--Specify page [ SAMPLE ]-->
<script src="js/demo/dashboard.js"></script>
<script src="./lib/L2Dwidget.min.js"></script>
<script type="text/javascript">
    L2Dwidget.init({
        "model": {
            jsonPath:
                "https://unpkg.com/live2d-widget-model-shizuku@1.0.5/assets/shizuku.model.json",
            "scale": 0.7 //调比例
        }, "display": {
            "position": "left", "width": 200, "height": 270,
            "hOffset": 30, "vOffset": 20,

        }, "mobile": {"show": true, "scale": 0.5},
        "react": {opacity: 0.6}, //设置透明度
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
<%-- Echars图形的构建 --%>
<script>
	var myChart = echarts.init(document.getElementById('echars-bar1'));
	//配置项 一个json对象
	var option = {
	    /* 图标名称 */
		title: {
			text: '异步加载示例图'
		},
        tooltip: {},
        legend: {
            data:['姓名']
        },
        /* X轴图例 */
		xAxis: {
		    data:[]
        },
		yAxis: {},
        /* 图例 */
		series: [{
			name: '姓名', //Y轴
			type: 'bar', //图标类型
			data: []
		}]
	};
	// 使用刚指定的配置项和数据显示图表。
    myChart.showLoading();
	myChart.setOption(option);
	$.ajax({
        url:"/index/userbar",
        success:function (data) {
            myChart.hideLoading();
            myChart.setOption({
                xAxis:{
                    data:data.xname
                },
                series: [{
                    // 根据名字对应到相应的系列
                    name: '姓名',
                    data: data.yage
                }]
            });
        }
    });
    var myChart2 = echarts.init(document.getElementById('echar2'));
    var option2 = {
        /* 图标名称 */
        title: {
            text: '异步加载示例图2'
        },
        tooltip: {},
        legend: {
            data:['名称']
        },
        /* X轴图例 */
        xAxis: {
            data:[]
        },
        yAxis: {},
        /* 图例 */
        series: [{
            name: '名称', //Y轴
            type: 'bar', //图标类型
            data: []
        }]
    };
    myChart2.setOption(option2);
    $.ajax({
        url:"/index/salbar",
        success:function (data) {
            for (var i = 0; i < data.resource.length; i++) {
                myChart2.setOption({
                    xAxis: {
                        data: data.resource[i].reopjigouid
                    },
                    series: [{
                        // 根据名字对应到相应的系列
                        name: '名称',
                        data: data.resource[i].reid
                    }]
                });
            }
        }
    });
</script>
<script>

</script>
</body>
</html>
