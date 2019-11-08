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

    <title>欢迎登录权限管理系统</title>



    <!--Bootstrap Stylesheet [ REQUIRED ]-->
    <link href="css/bootstrap.min.css" rel="stylesheet">


    <!--Nifty Stylesheet [ REQUIRED ]-->
    <link href="css/nifty.min.css" rel="stylesheet">


    <!--Nifty Premium Icon [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo-icons.min.css" rel="stylesheet">


    <!--Pace - Page Load Progress Par [OPTIONAL]-->
    <link href="plugins/pace/pace.min.css" rel="stylesheet">
    <script src="plugins/pace/pace.min.js"></script>


        
    <!--Demo [ DEMONSTRATION ]-->
    <link href="css/demo/nifty-demo.min.css" rel="stylesheet">
    <%-- 引入自己的字体图标库 --%>
	<link href="css/demo/myfonts/iconfont.css" rel="stylesheet">

        
</head>

<body>
    <div id="container" class="cls-container" >
        
		<!-- BACKGROUND IMAGE -->
		<!--===================================================-->
		<div id="bg-overlay" class="bg-img" style="background-image: url('img/bg-img/bg-img-3.jpg');"></div>
		
		
		<!-- LOGIN FORM -->
		<!--===================================================-->
		<div class="cls-content">
		    <div class="cls-content-sm panel">
		        <div class="panel-body">
		            <div class="mar-ver pad-btm">
		                <h1 class="h3">用户登录</h1>
		                <p>请输入登录信息</p>
		            </div>
		            <form action="../user/login" method="post">
		                <div class="form-group">
		                    <input type="text" class="form-control" placeholder="请输入用户名" autofocus name="userName">
		                </div>
		                <div class="form-group">
		                    <input type="password" class="form-control" placeholder="请输入密码" name="userPwd">
		                </div>
		                <div class="checkbox pad-btm text-left">
		                    <input id="demo-form-checkbox" class="magic-checkbox" type="checkbox">
		                    <label for="demo-form-checkbox">记住账号</label>
		                </div>
		                <button class="btn btn-primary btn-lg btn-block" type="submit">登录</button>
		            </form>
		        </div>
		
		        <div class="pad-all">
		            <a href="pages-password-reminder.html" class="btn-link mar-rgt">忘记密码 ?</a>
		            <a href="pages-register.html" class="btn-link mar-lft">前往注册</a>
		
		            <div class="media pad-top bord-top">
		                <div class="pull-right">
		                    <a href="#" class="pad-rgt"><i class="myfont icon-11qq"></i></a>
		                    <a href="#" class="pad-rgt"><i class="myfont icon-iconfontrectangle390"></i></a>
		                    <a href="#" class="pad-rgt"><i class="myfont icon-weixin-copy"></i></a>
		                </div>
		                <div class="media-body text-left text-bold text-main">
		                    第三方登录
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!--===================================================-->
		
		
		<!-- DEMO PURPOSE ONLY -->
		<!--===================================================-->
		<div class="demo-bg">
		    <div id="demo-bg-list">
		        <div class="demo-loading"><i class="psi-repeat-2"></i></div>
		        <img class="demo-chg-bg bg-trans active" src="img/bg-img/thumbs/bg-trns.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-1.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-2.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-3.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-4.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-5.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-6.jpg" alt="Background Image">
		        <img class="demo-chg-bg" src="img/bg-img/thumbs/bg-img-7.jpg" alt="Background Image">
		    </div>
		</div>
		<!--===================================================-->
		
		
		
    </div>

    <!-- END OF CONTAINER -->


        
    <!--JAVASCRIPT-->
    <!--jQuery [ REQUIRED ]-->
    <script src="js/jquery.min.js"></script>

    <!--BootstrapJS [ RECOMMENDED ]-->
    <script src="js/bootstrap.min.js"></script>

    <!--NiftyJS [ RECOMMENDED ]-->
    <script src="js/nifty.min.js"></script>

<script src="js/demo/bg-images.js"></script>





</body>
</html>
