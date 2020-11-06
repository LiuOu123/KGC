<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2019/9/15
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课工场在线考试平台</title>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="panel panel-success">
        <div class="panel-heading panel-title text-center">
            <h2>课工场在线考试平台</h2>
        </div>
        <div class="panel-body">
            <div class=" row">
                <label for="" class="col-lg-offset-2 col-md-3 text-right" style="font-size: 25px ;color: #2aabd2">考生：</label>
                <div class="col-md-6">
                    <label for="" style="font-size: 24px;color: #1b6d85">${suserinfo.nickname}</label>
                </div>
            </div>
            <div class="row">
                <label for="" class="col-lg-offset-2 col-md-3 text-right" style="font-size: 24px;color: coral">成绩：</label>
                <div class="col-md-6">
                    <label for="" style="color: red;font-size: 24px">${examScore.score}</label>
                </div>
            </div>
            <br>
            <div class="row col-md-3 col-lg-offset-4">
                <a href="/static/jsp/article-ceshi-student.jsp" class="btn btn-success btn-block">回到首页</a>
                <a href="/chajiexi?id=${examScore.paperid}" class="btn btn-primary btn-block">查看解析</a>
            </div>

        </div>
        <div class="panel-footer text-right">
            课工场在线考试平台
        </div>
    </div>
</div>
</body>
</html>
