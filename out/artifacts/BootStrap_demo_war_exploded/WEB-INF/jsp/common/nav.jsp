<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav id="mainnav-container">
    <div id="mainnav">
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content">

                    <!--Profile Widget-->
                    <!--================================-->
                    <div id="mainnav-profile" class="mainnav-profile">
                        <div class="profile-wrap text-center">
                            <div class="pad-btm">
                                <img class="img-circle img-md" src="img/profile-photos/1.png" alt="Profile Picture">
                            </div>
                            <a href="#profile-nav" class="box-block" data-toggle="collapse" aria-expanded="false">
                                            <span class="pull-right dropdown-toggle">
                                                <i class="dropdown-caret"></i>
                                            </span>
                                <p class="mnp-name">${sessionScope.userInfo.username}</p>
                                <span class="mnp-desc">${sessionScope.userInfo.email}</span>
                            </a>
                        </div>
                        <div id="profile-nav" class="collapse list-group bg-trans">
                            <a href="../jsp/index.jsp" class="list-group-item">
                                <i class="demo-pli-male icon-lg icon-fw"></i> 个人信息
                            </a>
                            <a href="../jsp/index.jsp" class="list-group-item">
                                <i class="demo-pli-gear icon-lg icon-fw"></i> 设置
                            </a>
                            <a href="../jsp/index.jsp" class="list-group-item">
                                <i class="demo-pli-information icon-lg icon-fw"></i> 帮助
                            </a>
                            <a href="/link/logout" class="list-group-item">
                                <i class="demo-pli-unlock icon-lg icon-fw"></i> 注销
                            </a>
                        </div>
                    </div>


                    <!--Shortcut buttons-->
                    <!--================================-->
                    <div id="mainnav-shortcut" class="hidden">
                        <ul class="list-unstyled shortcut-wrap">
                            <li class="col-xs-3" data-content="My Profile">
                                <a class="shortcut-grid" href="../jsp/index.jsp">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-mint">
                                        <i class="demo-pli-male"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Messages">
                                <a class="shortcut-grid" href="../jsp/index.jsp">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-warning">
                                        <i class="demo-pli-speech-bubble-3"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Activity">
                                <a class="shortcut-grid" href="../jsp/index.jsp">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-success">
                                        <i class="demo-pli-thunder"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="col-xs-3" data-content="Lock Screen">
                                <a class="shortcut-grid" href="../jsp/index.jsp">
                                    <div class="icon-wrap icon-wrap-sm icon-circle bg-purple">
                                        <i class="demo-pli-lock-2"></i>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!--================================-->
                    <!--End shortcut buttons-->


                    <ul id="mainnav-menu" class="list-group">
                        <li class="<%--active-sub active--%>" id="shouye">
                            <a href="../link/toindex" >
                                <i class="demo-pli-home"></i>
                                <span class="menu-title">首页</span>
                            </a>
                        </li>
                        <li class="list-divider"></li>
                    </ul>


                    <!--Widget-->
                    <!--================================-->
                    <div class="mainnav-widget">

                        <!-- Show the button on collapsed navigation -->
                        <div class="show-small">
                            <a href="../jsp/index.jsp" data-toggle="menu-widget" data-target="#demo-wg-server">
                                <i class="demo-pli-monitor-2"></i>
                            </a>
                        </div>

                        <!-- Hide the content on collapsed navigation -->
<%--                        <div id="demo-wg-server" class="hide-small mainnav-widget-content">--%>
<%--                            <ul class="list-group">--%>
<%--                                <li class="list-header pad-no mar-ver">Server Status</li>--%>
<%--                                <li class="mar-btm">--%>
<%--                                    <span class="label label-primary pull-right">15%</span>--%>
<%--                                    <p>CPU Usage</p>--%>
<%--                                    <div class="progress progress-sm">--%>
<%--                                        <div class="progress-bar progress-bar-primary" style="width: 15%;">--%>
<%--                                            <span class="sr-only">15%</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li class="mar-btm">--%>
<%--                                    <span class="label label-purple pull-right">75%</span>--%>
<%--                                    <p>Bandwidth</p>--%>
<%--                                    <div class="progress progress-sm">--%>
<%--                                        <div class="progress-bar progress-bar-purple" style="width: 75%;">--%>
<%--                                            <span class="sr-only">75%</span>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </li>--%>
<%--                                <li class="pad-ver"><a href="../jsp/index.jsp" class="btn btn-success btn-bock">View--%>
<%--                                    Details</a></li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
                    </div>
                    <!--================================-->
                    <!--End widget-->

                </div>
            </div>
        </div>
        <!--================================-->
        <!--End menu-->

    </div>
</nav>
<script src="/bst/js/jquery.min.js"></script>
<script>
    $(function () {
        var resource =${sessionScope.RESOURCES};
        sessionStorage.setItem("sysresources",JSON.stringify(resource));
        var data=JSON.parse(sessionStorage.getItem("sysresources"));
        var reids=[]
        /*  第一次循环查询出所有的一级资源,添加为父模块的资源 并保存父级资源的reid*/
        for (var i = 0; i < data.length; i++) {
            if (data[i].reopjigouid == 0) {
                reids.push(data[i].reid)
                $("#mainnav-menu").append(
                    '<li id="' + data[i].reid + '">'+
                    '<a href="' + data[i].relink + '" >'+
                    '<i class="' +data[i].rebianhao+ '"></i>'+
                    '<span class="menu-title ">' + data[i].resourcename + '</span>'+
                    '<i class="arrow"></i>'+
                    '</a>'+
                    '</li>'+
                    '<li class="list-divider"></li>'
                )
            }
        }
        /*  外层循环遍历所有的父级资源,内层再次遍历资源记录  查询出二级资源在哪个父级资源下  添加资源信息 */
                for (var k=0;k<reids.length;k++)
                {
                    for (var j = 0; j < data.length; j++)
                    {
                        if(data[j].reopjigouid==reids[k])
                        {
                            $( '#'+reids[k]+'').append(
                                '<ul class="collapse in">\n' +
                                '<li><a href='+data[j].relink+'>'+data[j].resourcename+'</a></li>\n' +
                                '</ul>\n' +
                                '\n' +
                                '</li>'
                            )
                        }
                    }
                }

    })
    //点击事件获取鼠标焦点
    $("#mainnav-menu a").each(function () {
        var ahref=$(this).attr("href").substring($(this).attr("href").lastIndexOf("/"));
        console.log(ahref)


        if(ahref.indexOf("toindex")!=-1){
            $("#shouye").attr("class","active-sub active");
            return
        }
       /* var lhref1=window.location.href;
        var lhref=lhref1.substring(lhref1.lastIndexOf("/"))*/

        else{
            $(this).parent().attr("class","active-link");
            $(this).parent().parent().parent().attr("class","active-sub active");
            $("#shouye").removeAttr("class");
            return;
        }
    })
</script>