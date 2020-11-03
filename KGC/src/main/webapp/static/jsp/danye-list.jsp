<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/28
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
<!-- 正常数据导出肯定要传入参数，我这里没有用ajax传参，简单用链接传参 -->

<body>
<div class="page-content-wrap">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline tool-btn">
                <button class="layui-btn layui-btn-small layui-btn-normal go-btn hidden-xs" data-url="danye-detail.html"><i class="layui-icon">&#xe654;</i></button>
                <button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs" data-url="/admin/category/listorderall.html"><i class="iconfont">&#xe656;</i></button>
            </div>
            <div class="layui-inline">
                <input type="text" name="title" placeholder="请输入姓名" class="layui-input">
                <input type="hidden" name="rid" value="${rid}">
            </div>
            <button class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
            <form action="">
                <input type="button" value="报表导出" onclick="download()"/>
            </form>
        </div>
    </form>
    <div class="layui-form" id="table-list">
        <table class="layui-table" lay-even lay-skin="nob">
            <colgroup>
                <col width="50">
                <col class="hidden-xs" width="50">
                <col class="hidden-xs" width="80">
                <col class="hidden-xs" width="300">
                <col>
                <col class="hidden-xs" width="200">
                <col width="80">
                <col width="150">
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
                <th>ID</th>
                <th>姓名</th>
                <th>描述</th>
                <th>图片</th>
                <th>班级</th>
                <th>提交时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="item">
                <tr>
                    <td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
                    <td>${item.wid}</td>
                    <td>${item.user.user}</td>
                    <td>${item.reply.replynei}</td>
                    <td><a href="/download?filename=${item.img}"><img title="立即下载" src="/static/images/uploadfiles/${item.img}" style="width: 50px;height: 50px;"></a></td>
                    <td>${item.grade.gname}</td>
                    <td><fmt:formatDate value="${item.wordate}" pattern="yyyy-MM-dd"/></td>
                    <script type="text/javascript">
                        function download(){
                            var url="/download_excel?wid=${item.wid}&user=${item.user.user}&replynei=${item.reply.replynei}&img=${item.img}&gname=${item.grade.gname}&wordate=<fmt:formatDate value="${item.wordate}" pattern="yyyy-MM-dd"/>";
                            window.open(url);
                        }
                    </script>
                    <td>
                        <div class="layui-inline">
                            <a href="/toSelectAllTestdel?wid=${item.wid}"><i class="layui-icon">&#xe640;删除</i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <div class="page-wrap">
            <a href="/toSelectAllTest?title=${title}&pageNumStr=${pageInfo.firstPage}&rid=${rid}">首页</a>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="/toSelectAllTest?title=${title}&pageNumStr=${pageInfo.prePage}&rid=${rid}">上一页</a>
            </c:if>
            <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                <a href="/toSelectAllTest?title=${title}&pageNumStr=${i}&rid=${rid}">${i}</a>
            </c:forEach>
            <c:if test="${pageInfo.hasNextPage}">
                <a href="/toSelectAllTest?title=${title}&pageNumStr=${pageInfo.nextPage}&rid=${rid}">下一页</a>
            </c:if>
            <a href="/toSelectAllTest?title=${title}&pageNumStr=${pageInfo.lastPage}&rid=${rid}">尾页</a>
        </div>
    </div>
</div>
<script src="/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
<script>
    layui.use(['form', 'jquery', 'layer', 'dialog'], function() {
        var $ = layui.jquery;

        //修改状态
        /*$('#table-list').on('click', '.table-list-status', function() {
            var That = $(this);
            var status = That.attr('data-status');
            var id = That.parent().attr('data-id');
            if(status == 1) {
                That.removeClass('layui-btn-normal').addClass('layui-btn-warm').html('未审核').attr('data-status', 2);
            } else if(status == 2) {
                That.removeClass('layui-btn-warm').addClass('layui-btn-normal').html('已审核').attr('data-status', 1);

            }
        })*/

    });
</script>
</body>
</html>
