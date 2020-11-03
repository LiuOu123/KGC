<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/27
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>学生通管理</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="/static/admin/css/admin.css" />
</head>

<body>
<div class="wrap-container clearfix">
    <div class="column-content-detail">
        <form class="layui-form" action="/toReleaseTest" method="post">
            <div class="layui-form-item">
                <div class="layui-inline tool-btn">
                    <button class="layui-btn layui-btn-small layui-btn-normal addBtn" data-url="/toAddReleaseTest"><i class="layui-icon">&#xe654;</i></button>
                    <button class="layui-btn layui-btn-small layui-btn-danger delBtn"  data-url="article-add.html"><i class="layui-icon">&#xe640;</i></button>
                    <button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs" data-url="article-add.html"><i class="iconfont">&#xe656;</i></button>
                </div>
                <div class="layui-inline">
                    <input type="text" name="title" placeholder="请输入标题" class="layui-input">
                </div>
                <div class="layui-inline">
                    <select name="states" lay-filter="status">
                        <option value="0">全部</option>
                        <c:forEach items="${requestScope.gradeList}" var="item">
                            <option value="${item.gradeid}">${item.gradename}</option>
                        </c:forEach>
                    </select>
                </div>
                <button class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
            </div>
        </form>
        <div class="layui-form" id="table-list">
            <table class="layui-table" lay-even lay-skin="nob">
                <colgroup>
                    <col width="50">
                    <col class="hidden-xs" width="50">
                    <col class="hidden-xs" width="300">
                    <col>
                    <col class="hidden-xs" width="150">
                    <col class="hidden-xs" width="150">
                    <col width="80">
                    <col width="150">
                </colgroup>
                <thead>
                <tr>
                    <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
                    <th>ID</th>
                    <th>标题</th>
                    <th>发布内容</th>
                    <th>图片</th>
                    <th>班级</th>
                    <th>发布时间</th>
                  <%--  <th>状态</th>--%>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${pageInfo.list}" var="item">
                    <tr>
                        <td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
                        <td>${item.rid}</td>
                        <td>${item.reltitle}</td>
                        <td>${item.relnei}</td>
                        <td><a href="/download?filename=${item.img}"><img title="立即下载" src="/static/images/uploadfiles/${item.img}" style="width: 50px;height: 50px;"></a></td>
                        <td>${item.grade.gname}</td>
                        <td><fmt:formatDate value="${item.reldate}" pattern="yyyy-MM-dd"/></td>
                    <%--    <td>
                            <c:if test="${item.type==1}">
                                <button class="layui-btn layui-btn-mini layui-btn-warm">未完结</button>
                            </c:if>
                            <c:if test="${item.type==2}">
                                <button class="layui-btn layui-btn-mini layui-btn-normal">已完结</button>
                            </c:if>
                        </td>--%>
                        <td>
                            <div class="layui-inline">
<a href="/toSelectAllTest?rid=${item.rid}"><i class="layui-icon">&#xe642;查看回复</i></a>
                                <a href="/articledel?rid=${item.rid}"><i class="layui-icon">&#xe640;删除</i></a>
                                <a href="/updatetoReleaseTest?rid=${item.rid}"><i class="layui-icon">&#xe642;修改</i></a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="page-wrap">
                <a href="/toReleaseTest?title=${title}&pageNumStr=${pageInfo.firstPage}">首页</a>
                <c:if test="${pageInfo.hasPreviousPage}">
                    <a href="/toReleaseTest?title=${title}&pageNumStr=${pageInfo.prePage}">上一页</a>
                </c:if>
                <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                    <a href="/toReleaseTest?title=${title}&pageNumStr=${i}">${i}</a>
                </c:forEach>
                <c:if test="${pageInfo.hasNextPage}">
                    <a href="/toReleaseTest?title=${title}&pageNumStr=${pageInfo.nextPage}">下一页</a>
                </c:if>
                <a href="/toReleaseTest?title=${title}&pageNumStr=${pageInfo.lastPage}">尾页</a>
            </div>
        </div>
    </div>
</div>
<script src="/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
