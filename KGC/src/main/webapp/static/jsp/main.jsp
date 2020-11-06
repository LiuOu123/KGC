<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/24
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>学生通管理</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="/static/admin/css/admin.css"/>
</head>
<style type="text/css">
    .main-layout-side .m-logo {
        width: 102%;
        height: 90px;
        margin-left: -3px;
        background: #00b5f9 url(/static/admin/images/kgclogo.jpg) center center no-repeat;
    }
</style>
<body>
<div class="main-layout" id='main-layout'>
    <!--侧边栏-->
    <div class="main-layout-side">
        <div class="m-logo">
        </div>
        <ul class="layui-nav layui-nav-tree" lay-filter="leftNav">
            <c:if test="${shenfen==1}">
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="iconfont">&#xe607;</i>我的班级</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="/static/jsp/article-ceshi-student.jsp" data-id='1' data-text="后台菜单"><span class="l-line"></span>练习题测试</a></dd>
                        <dd><a href="javascript:;" data-url="menu2.html" data-id='2' data-text="前台菜单"><span class="l-line"></span>前台菜单</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="iconfont">&#xe608;</i>提交作业</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="/toSelectTest" data-id='3' data-text="我的任务"><span class="l-line"></span>我的任务</a></dd>
                        <dd><a href="javascript:;" data-url="danye-list.html" data-id='9' data-text="单页管理"><span class="l-line"></span>单页管理</a></dd>
                    </dl>
                </li>
            </c:if>
            <c:if test="${shenfen==2}">
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="iconfont">&#xe607;</i>班级管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="/chastudent" data-id='1' data-text="查看班级"><span class="l-line"></span>查看学生</a></dd>
                        <dd><a href="javascript:;" data-url="menu2.html" data-id='2' data-text="前台菜单"><span class="l-line"></span>前台菜单</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="iconfont">&#xe608;</i>内容管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="/toReleaseTest" data-id='3' data-text="发布测试"><span class="l-line"></span>发布测试</a></dd>
                        <dd><a href="javascript:;" data-url="/static/jsp/article-ceshi-tearcher.jsp" data-id='9' data-text="单页管理"><span class="l-line"></span>发布测试题</a></dd>
                    </dl>
                </li>
            </c:if>
            <c:if test="${shenfen==3}">
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;"><i class="iconfont">&#xe607;</i>班级管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="toClass.do" data-id='1' data-text="查看班级"><span class="l-line"></span>查看班级</a></dd>
                        <dd><a href="javascript:;" data-url="/static/jsp/menu2.jsp" data-id='2' data-text="前台菜单"><span class="l-line"></span>前台菜单</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><i class="iconfont">&#xe608;</i>学员状态</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-url="article-list.html" data-id='3' data-text="文章管理"><span class="l-line"></span>文章管理</a></dd>
                        <dd><a href="javascript:;" data-url="danye-list.html" data-id='9' data-text="单页管理"><span class="l-line"></span>单页管理</a></dd>
                    </dl>
                </li>
            </c:if>
            <%--<li class="layui-nav-item">
                <a href="javascript:;" data-url="email.html" data-id='4' data-text="邮件系统"><i class="iconfont">&#xe603;</i>邮件系统</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe60d;</i>生成静态</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;"><i class="iconfont">&#xe600;</i>备份管理</a>
            </li>--%>
            <li class="layui-nav-item">
                <a href="javascript:;" data-url="/static/jsp/admin-info.jsp" data-id='5' data-text="个人信息"><i class="iconfont">&#xe606;</i>个人信息</a>
            </li>
            <li class="layui-nav-item">
                <a href="javascript:;" data-url="/static/jsp/system.jsp" data-id='6' data-text="系统设置"><i class="iconfont">&#xe60b;</i>系统设置</a>
            </li>
        </ul>
    </div>
    <!--右侧内容-->
    <div class="main-layout-container">
        <!--头部-->
        <div class="main-layout-header">
            <div class="menu-btn" id="hideBtn">
                <a href="javascript:;">
                    <span class="iconfont">&#xe60e;</span>
                </a>
            </div>
            <ul class="layui-nav" lay-filter="rightNav">
                <li class="layui-nav-item"><a href="javascript:;" data-url="email.html" data-id='4' data-text="邮件系统"><i class="iconfont">&#xe603;</i></a></li>
                <li class="layui-nav-item">
                    <a href="javascript:;" data-url="jsp/admin-info.jsp" data-id='5' data-text="个人信息">${username}</a>
                </li>
                <li class="layui-nav-item"><a href="/toCloseSystem.do">退出</a></li>
            </ul>
        </div>
        <!--主体内容-->
        <div class="main-layout-body">
            <!--tab 切换-->
            <div class="layui-tab layui-tab-brief main-layout-tab" lay-filter="tab" lay-allowClose="true">
                <ul class="layui-tab-title">
                    <li class="layui-this welcome">后台主页</li>
                </ul>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show" style="background: #f5f5f5;">
                        <!--1-->
                        <iframe src="/static/jsp/welcome.jsp" width="100%" height="100%" name="iframe" scrolling="auto" class="iframe" framborder="0"></iframe>
                        <!--1end-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--遮罩-->
    <div class="main-mask">

    </div>
</div>
<script type="text/javascript">
    var scope={
        link:'./welcome.html'
    }
</script>
<script src="/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/main.js" type="text/javascript" charset="utf-8"></script>

</body>
</html>
