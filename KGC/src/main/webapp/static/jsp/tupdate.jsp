<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/26
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/admin/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<h1>老师修改同学</h1>
<form action="/tPutOver" method="post" id="baiodan">
    <table border="1px" width="300px">
        <input type="hidden" name="_method" value="PUT">
        <tr align="center">
            <td>编号</td>
            <td><input type="text" name="id" value="${user.id}" id="id" readonly/></td>
        </tr>
        <tr align="center">
            <td>姓名</td>
            <td><input type="text" name="name" value="${user.name}" id="name"/></td>
        </tr>
        <tr align="center">
            <td>班级</td>
            <td><input type="text" name="ban" value="${user.gradename}" id="ban"/></td>
        </tr>
        <tr align="center">
            <td colspan="2"><input type="button" value="保存" onclick="add()"></td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    function add() {
        var baiodan = $("#baiodan");
        var id = $("#id").val();
        var name = $("#name").val();
        var gradename = $("#ban").val();
        var actionUrl="/tPutOver/"+id+"/"+name+"/"+gradename;
        baiodan.attr("action",actionUrl);
        baiodan.submit();
    }
</script>
</body>
</html>
