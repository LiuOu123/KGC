<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/12
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" enctype="multipart/form-data" action="/doTestUploadFile">
    <input type="file" name="test_pic">
    <input type="submit" value="上传">
    <input type="text" name="id" value="1">
</form>
</body>
</html>
