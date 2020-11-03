<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/25
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>老师添加同学</title>
    <script type="text/javascript" src="/static/admin/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<c:if test="${jie==1}">
    <script type="text/javascript">
        alert("提交失败 您提交的信息有误");
    </script>
</c:if>
<h1>老师添加同学</h1>
<form action="/StuPut" method="post" id="baiodan">
    <table border="1px" width="300px">
        <input type="hidden" name="_method" value="PUT">
        <tr align="center">
            <td>编号</td>
            <td><input type="text" name="id" id="id"/></td>
        </tr>
        <tr align="center">
            <td>姓名</td>
            <td><input type="text" name="name" id="name"/></td>
        </tr>
        <tr align="center">
            <td>班级</td>
            <td><input type="text" name="ban" id="ban"/></td>
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
        var actionUrl="/StuPut/"+id+"/"+name+"/"+gradename;
        baiodan.attr("action",actionUrl);
        baiodan.submit();
    }
</script>
</body>
<%--var id = $("[name='id']").val();
if (id == "") {
alert("id不能为空");
return false;
}
var name = $("[name='name']").val();
if (name == "") {
alert("name不能为空");
return false;
}
var name = $("[name='name']").val();
if (name == "") {
alert("name不能为空");
return false;
}
var score = $("[name='score']").val();
if (score == "") {
alert("score不能为空");
return false;
}--%>
</html>
