<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/26
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>学生通管理</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="/static/admin/css/admin.css" />
    <script src="/js/jquery-1.8.3.min.js" type="text/javascript"></script>
</head>

<body>
<div class="page-content-wrap">
    <form class="layui-form" action="/chastudent" method="post">
        <div class="layui-form-item">
            <div class="layui-inline tool-btn">
                <button class="layui-btn layui-btn-small layui-btn-normal addBtn hidden-xs" data-url="/toStuPut" <%--menu-add2.html--%>><i class="layui-icon">&#xe654;</i></button>
                <button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs" data-url="/admin/category/listorderall.html"><i class="iconfont">&#xe656;</i></button>
            </div>
            <div class="layui-inline">
                <input type="text" name="title" placeholder="请输入姓名" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-inline">
                <select name="category" lay-filter="status">
                        <option value="${classname}">${classname}</option>
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
                <col class="hidden-xs" width="100">
                <col>
                <col width="80">
                <col width="150">
            </colgroup>
            <thead>
            <tr>
                <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
                <th>ID</th>
                <th>姓名</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="item">
                <tr>
                    <td><input type="checkbox" name="" lay-skin="primary" data-id="1"></td>
                    <td>${item.guid}</td>
                    <td>${item.user.user}</td>
                 <%--   <td>&lt;%&ndash;<input type="text" name="title" autocomplete="off" class="layui-input" value="" data-id="1">&ndash;%&gt;${item.name}</td>--%>

                    <td>
                       <%-- <div class="layui-inline">
                            <button class="layui-btn layui-btn-mini layui-btn-normal  add-btn" data-id="1" data-url="menu-add2.html"><i class="layui-icon">&#xe654;</i></button>
                            <button class="layui-btn layui-btn-mini layui-btn-normal  edit-btn" data-id="1" data-url="/tupdat/${item.id}.html"><i class="layui-icon">&#xe642;</i></button>
                            <form class="layui-inline" action="/delStudent/.do" id="delForm" method="post">
                                <input type="hidden" name="_method" value="DELETE">
                                <input type="hidden" value="${item.id}">
                                <input type="button" class="layui-icon del" value="&#xe640;"/>
                            </form>
                        </div>--%>
                    </td>
                </tr>
            </c:forEach>

            <script type="text/javascript">
                $(document).ready(function () {
                    //列表删除
                    $(".del").click(function () {
                        if(confirm("是否删除该信息")){
                            var myForm=$("#delForm");
                            var id=$(this).prev().val();
                            console.log(id);
                            var actionUrl="/delStudent/"+id;
                            myForm.attr("action",actionUrl);
                            myForm.submit();
                        }
                    })
                })
            </script>
            </tbody>
        </table>
        <div class="page-wrap">
            <div>
                <a href="/chastudent?title=${title}&pageNumStr=${pageInfo.firstPage}">首页</a>
                <c:if test="${pageInfo.hasPreviousPage}">
                    <a href="/chastudent?title=${title}&pageNumStr=${pageInfo.prePage}">上一页</a>
                </c:if>
                <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                    <a href="/chastudent?title=${title}&pageNumStr=${i}">${i}</a>
                </c:forEach>
                <c:if test="${pageInfo.hasNextPage}">
                    <a href="/chastudent?title=${title}&pageNumStr=${pageInfo.nextPage}">下一页</a>
                </c:if>
                <a href="/chastudent?title=${title}&pageNumStr=${pageInfo.lastPage}">尾页</a>
            </div>
    </div>
</div>
<script src="/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
<script>

    layui.use(['form', 'jquery', 'layer', 'dialog'], function() {
        var $ = layui.jquery;

        //修改状态
        $('#table-list').on('click', '.table-list-status', function() {
            var That = $(this);
            var status = That.attr('data-status');
            var id = That.parent().attr('data-id');
            if(status == 1) {
                That.removeClass('layui-btn-normal').addClass('layui-btn-warm').html('较差').attr('data-status', 2);
            } else if(status == 2) {
                That.removeClass('layui-btn-warm').addClass('layui-btn-normal').html('良好').attr('data-status', 1);

            }
        })

    });
</script>
</body>
</html>
