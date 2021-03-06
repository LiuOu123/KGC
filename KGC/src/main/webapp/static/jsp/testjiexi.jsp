<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: samsung
  Date: 2019/9/14
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>百度在线考试平台</title>
    <link rel="stylesheet" href="/static/bootstrap/css/bootstrap.min.css">
    <script src="/static/bootstrap/js/jquery.min.js"></script>
</head>
<body>

<div class="container">
    <div class="panel panel-success">
        <div class="panel-heading panel-title">
            <h1>${examPaper.papername}</h1>
        </div>
        <div class="panel-body">
            <form action="/exam/${paperid}/result.action" method="post">
                <c:forEach var="it" items="${items}" varStatus="v">
                <c:if test="${it.examScoreDetail.upoint!=0}">
                <div class="panel panel-success">
                    </c:if>
                    <c:if test="${it.examScoreDetail.upoint==0}">
                    <div class="panel panel-danger">
                        </c:if>
                        <div class="panel-heading panel-title">
                            第${v.index+1}题【 <span>${it.etype}</span>】：${it.ename}
                        </div>
                        <div class="panel-body col-lg-offset-1">
                            <div class="item">
                                <div class="radio">
                                    <input name="${it.eid}" <c:if test="${it.examScoreDetail.uanswer=='a'}">checked</c:if> value="a" type="radio">
                                </div>
                                <label for="">${it.ea}</label>
                            </div>
                            <div class="item">
                                <div class="radio">
                                    <input name="${it.eid}" <c:if test="${it.examScoreDetail.uanswer=='b'}">checked</c:if> value="b" type="radio">
                                </div>
                                <label for="">${it.eb}</label>
                            </div>
                            <c:if test="${it.etype!=2}">
                                <div class="item">
                                    <div class="radio">
                                        <input name="${it.eid}" <c:if test="${it.examScoreDetail.uanswer=='c'}">checked</c:if> value="c" type="radio">
                                    </div>
                                    <label for="">${it.ec}</label>
                                </div>
                                <div class="item">
                                    <div class="radio">
                                        <input name="${it.eid}" <c:if test="${it.examScoreDetail.uanswer=='d'}">checked</c:if> value="d" type="radio">
                                    </div>
                                    <label for="">${it.ed}</label>
                                </div>
                            </c:if>

                            <div class="row">
                                <hr/>
                                <c:if test="${it.examScoreDetail.upoint==0}">
                                    <a style="color: red">我的答案：${it.examScoreDetail.uanswer}</a>
                                </c:if>
                                <c:if test="${it.examScoreDetail.upoint!=0}">
                                   我的答案：${it.examScoreDetail.uanswer}
                                </c:if>
                                正确答案：${it.ekeys} &nbsp;
                                实际得分：${it.examScoreDetail.upoint} &nbsp;
                                试题解析：${it.ehints} &nbsp;
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                <c:if test="${it.examScoreDetail.upoint!=0}">
                                    <img src="/static/imgs/error.jpg" alt="" height="23px" width="25px">
                                </c:if>
                                <c:if test="${it.examScoreDetail.upoint==0}">
                                    <img src="/static/imgs/right.jpg" alt="" height="23px" width="25px">
                                </c:if>

                            </div>

                        </div>
                    </div>
                    </c:forEach>
                    <a href="/static/jsp/article-ceshi-student.jsp" class="btn btn-success btn-block">返回我的试卷</a>
            </form>
        </div>
        <div class="panel-footer text-right">
            课工场在线考试平台
        </div>
    </div>
</div>
</body>
<script>
    <%--1,填空; 2,判断 ;3,单选; 4,多选;5,问答--%>
    $(function () {
        var d = document.getElementsByTagName("span");
        for (var i = 0; i < d.length; i++) {
            if (d[i].textContent == 2) {
                d[i].textContent = "判断题";
            } else {
                d[i].textContent = "单选题";
            }
        }
    })
</script>

</html>
