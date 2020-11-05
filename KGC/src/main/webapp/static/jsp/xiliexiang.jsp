<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
<head>
    <meta charset="utf-8" />
    <title>系列详细</title>
    <style type="text/css">
        html, body {
            margin: 0 auto;
        }

        li {
            display: inline-block;
            margin-right: 30px;
            color: black;
        }

        a {
            color: black;
            text-decoration: none;
            font-size: 17px;
        }

        .wode {
            text-decoration: none;
        }

        .wode:hover {
            text-decoration: none;
            color: #AECA2D;
        }

        .wode a {
            position: relative;
            top: 50px;
        }

        .dibu {
            margin-top: 0px;
        }

        .tu_1 {
            background: url(/static/img/ding.jpg);
            width: 1520px;
            height: 300px;
            margin-top: -25px;
        }

        h6 {
            margin-left: 150px;
            margin-top: 30px;
        }

        .dian_1 {
            width: 500px;
            height: 90px;
            background-color: #8CC600;
            border: 1px #8CC600 solid;
            border-radius: 15px;
            margin-left: 500px;
            margin-top: -40px;
        }

        .dian_11 {
            margin-top: 22.5px;
            margin-left: 85px;
        }

        .dian_12 {
            border: 1px solid white;
            width: 150px;
            height: 60px;
            font-size: 25px;
            background-color: #8CC600;
            margin-top: -40px;
            margin-left: 310px;
            border-radius: 15px;
        }

        .dian_121 {
            color: white;
            margin: 10px;
        }

        .da_1 {
            /*border: 1px solid red;*/
            width: 1100px;
            margin-left: 250px;
            margin-top: 50px;
        }

        .da_11 {
            font-size: 15px;
        }

        .da_12 {
            color: #8CC600;
            font-size: 30px;
            margin-left: 0px;
            margin-top: 70px;
        }

        .da_12 p {
            color: black;
            font-size: 15px;
            margin-left: 490px;
            margin-top: -22px;
        }

        .da_13 {
            /*border: 1px solid red;
                        width: 500px;
                        height: 500px;*/
            margin-left: 0px;
            margin-top: 50px;
        }

        .da_131 {
            margin-left: 0px;
            margin-top: -200px;
        }

        .da_132 {
            margin-left: 10px;
            margin-top: 0px;
        }

        .da_133 {
            margin-left: 33px;
            margin-top: 20px;
        }

        .da_14 {
            margin-left: 0px;
            margin-top: 10px;
        }

        .jiang {
            border: 1px solid gainsboro;
            background-color: gainsboro;
            width: 1520px;
            height: 380px;
        }

        .jiang_1 {
            margin-left: 250px;
            margin-top: 40px;
        }

        .jiang_2 {
            margin-left: 250px;
            margin-top: 45px;
        }

        .jiang_3 {
            width: 800px;
            height: 500px;
            margin-left: 410px;
            margin-top: -160px;
        }

        .xue {
            border: 1px solid white;
            background-color: white;
            width: 1520px;
            margin-left: 0px;
            margin-top: -70px;
        }

        .xue_1 {
            margin-left: 250px;
            margin-top: 40px;
        }

        .xue_2 {
            margin-left: 250px;
            margin-top: 30px;
        }

        .xue_3 {
            /*border: 1px solid red;
                        width: 300px;
                        height: 100px;*/
            margin-left: 290px;
            margin-top: -70px;
        }

        #yuanjiao {
            -moz-border-radius: 30px;
            -webkit-border-radius: 30px;
            border-radius: 30px;
        }
    </style>
    <link rel="shortcut icon" href="/static/img/zhihuilogo.png">
</head>

<body style="background-color: #F5F5F5;">
<!--导航栏-->
<div style="background-color: white; margin-top: -10px; height: 70px;">
    <ul style="list-style: none; display: inline-block; margin-top: 10px;">
        <li style="margin-left: 140px;"><img
                src="/static/img/1555375994280734.png"></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">直播</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">系列</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">岗位</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">实战</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">题库</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">社区</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">教材</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">阿里云</a></li>
        <li><a class="wode" href="#" name="tou"
               style="position: relative; top: -20px;">社区</a></li>
        <c:if test="${sessionScope.username != null }">
            <c:if test="${sessionScope.usertype==1}">
                <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${userxinxi.nickname}&nbsp;&nbsp;&nbsp;同学</a>
            </c:if>
            <c:if test="${sessionScope.usertype==2}">
                <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${userxinxi.nickname}&nbsp;&nbsp;&nbsp;老师</a>
            </c:if>
            <c:if test="${sessionScope.usertype==3}">
                <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${userxinxi.nickname}&nbsp;&nbsp;&nbsp;管理员</a>
            </c:if>
            <%--<c:forEach items="${sessionScope.denglu}" var="d">

                <c:if test="${d.lei == 0 }">
                    <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.nicheng }&nbsp;&nbsp;&nbsp;同学</a>
                </c:if>
                <c:if test="${d.lei == 1 }">
                    <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${SessionScope.nicheng }&nbsp;&nbsp;&nbsp;老师</a>
                </c:if>
                <c:if test="${d.lei == 2 }">
                    <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${SessionScope.nicheng }&nbsp;&nbsp;&nbsp;管理员</a>
                    <a style="margin-left:50px" href="guanlizhu">后台</a>
                </c:if>
            </c:forEach>--%>
        </c:if>
        <c:if test="${sessionScope.username == null }">
            <li><a href="#" style="margin-left: 120px; color: #AECA2D; position: relative; top: -20px">APP下载</a>
            </li>
            <li><a class="wode" href="/static/jsp/denglu.jsp" style="position: relative; top: -20px">登录</a></li>
            <li style="position: relative; top: -20px">|</li>
            <li><a class="wode" href="/static/jsp/zhuce.jsp" style="position: relative; top: -20px">注册</a></li>
        </c:if>
    </ul>
</div>
<br />

<div class="tu_1" style="border: 1px solid black;">
    <h6 style="color: gainsboro; font-size: 15px;">系列课程 > Python
        Web编程-Django框架</h6>
    <center>
        <h1 style="color: white; font-size: 50px;">${xiLieKeChengs.name }
        </h1>
        <h5 style="color: #8CC600; font-size: 15px;">
            课程数：${xiLieKeChengs.kenum }节 课程有效期：${xiLieKeChengs.qi }天
            学习人数：${xiLieKeChengs.people }</h5>
    </center>
</div>
<div class="dian_1">
    <div class="dian_11">
			<span style="color: white; font-size: 25px; position: relative; top: 10px;">
                <c:choose>
					<c:when test="${xiLieKeChengs.price eq '免费' }">价格：${xiLieKeChengs.price }</span>
                </c:when>
                <c:otherwise>
                    价格：${xiLieKeChengs.price }元</span>
        </c:otherwise>
        </c:choose>
    </div>
    <%--<a href="123.html">--%>
        <div class="dian_12">
            <div class="dian_121">

                <c:if test="${xiLieKeChengs.price=='免费'}">
                    <a style="color: white; font-size: 20px;margin-left: 25px;" href="/mianfeidingyue?name=${xiLieKeChengs.name }&biao=${usertable.user}">立即订阅</a>
                </c:if>

                <c:if test="${xiLieKeChengs.price!='免费'}">
                    <c:if test="${ count==0 }">
                        <center>
                            <a style="color: white; font-size: 20px;" href="/ZhiFuBao?name=${xiLieKeChengs.name}&price=${xiLieKeChengs.price}&id=${xiLieKeChengs.id}&miaoshu=课程数：${xiLieKeChengs.kenum }节 课程有效期：${xiLieKeChengs.qi }天&username=${usertable.user}">立即购买</a>
                        </center>
                    </c:if>
                    <c:if test="${ count>0 }">
                        <center>
                            <a style="color: white; font-size: 20px" href="/dingyue?name=${xiLieKeChengs.name }&biao=${usertable.user}">立即订阅</a>
                        </center>
                    </c:if>
                </c:if>

                <%--<c:forEach items="${requestScope.userbuy }" var="u">

                    <c:choose>
                        <c:when test="${u.lei == 0 }">
                            <center>
                                <a style="color: white; font-size: 20px" href="xiliegoumai?name=${sessionScope.username }&price=${requestScope.price }&biao=${requestScope.namee }">立即购买</a>
                            </center>
                        </c:when>
                        <c:when test="${u.lei == 1 }">
                            <center>
                                <a style="color: white; font-size: 20px" href="123">立即观看</a>
                            </center>
                        </c:when>

                    </c:choose>
                </c:forEach>--%>
            </div>
        </div>
    <%--</a>--%>
</div>

<div class="da_1">
    <div class="da_11">
        <p>${xiLieKeChengs.name }</p>
    </div>
    <div class="da_12">${xiLieKeChengs.name }
        <p>共${xiLieKeChengs.kenum }节课程，已更新完毕</p>
    </div>
    <c:forEach items="${list }" var="xx">
        <div class="da_13">

				<span class="da_131"><img src="/static/img/小图标_副本.png" width="20px" height="20px"></span> <a href="123.html"><span class="da_132"style="font-weight: 1000; position: relative; top: -5px;">${xx.jie}</span></a>
                    <br />

                    <p class="da_133">${xx.xiang}</p>



                    <br />
                    <hr />



        </div>
        <br />
    </c:forEach>
</div>



<div class="jiang" style="margin-top: 50px;">
    <div class="jiang_1" style="color: #8CC600; font-size: 30px;">讲师介绍</div>
    <div class="jiang_2">
        <img src="/static/img/教员.jpg" style="position: relative; top: -20px;" />
    </div>
    <div class="jiang_3">
        <ul>
            <li style="position: relative; top: -10px;font-size: 20px">${xiLieKeChengs.tname }</li>
            <br />
            <br />
            <li style="position: relative; top: -10px;">${xiLieKeChengs.tchat }</li>
        </ul>
    </div>
</div>

<div class="xue" style="" id="fabiao">
<c:if test="${userBuy!=null}">
    <c:if test="${userBuy.lei==1}">
        <div class="xue_1" style="color: #8CC600; font-size: 30px;">学员评价</div>
        <input type="text" name="" style="width: 500px;height: 50px;position: relative;left: 410px;top: -45px;font-size: 30px">
        <input type="submit" value="发表" style="width: 100px;height: 58px;position: relative;left: 430px;top: -50px">
        <%--<c:forEach items="${requestScope.xlxl }" var="xl">
            <div class="xue_2">
                <img id="yuanjiao" src="touxiang/${xl.src }.jpg" width="68px"
                     height="68px" />
            </div>
            <div class="xue_3" style="margin-left: 300px; margin-top: -90px">
                <ul>
                    <li style="color: gainsboro;">${xl.name }</li>
                    <br />

                    <li>${xl.chat }</li>
                    <br />

                    <li style="color: gainsboro;">发表于${xl.time}</li>
                </ul>
            </div>
            <br />
        </c:forEach>--%>
    </c:if>
    <c:if test="${userBuy.lei==0}">

    </c:if>
</c:if>
</div>

<!--底部-->
<div style="background-color: #F0F0F0; width: 100%; height: 340px;"
     class="dibu">
    <div style="margin-left: 300px;">
        <img src="/static/img/1546929407811629.jpg" style="margin-top: 50px;" /> <img
            src="/static/img/1546929756610527.png"
            style="margin-top: 50px; margin-left: 20px;" />
        <ul style="margin-top: -130px; margin-left: 300px;">
            <!--<li></li>
        <li></li>-->
            <li style="margin-top: 20px;">
                <ul>
                    <li>关于我们</li>
                    <li style="margin-left: 80px;">优质资源</li>
                    <li style="margin-left: 80px;">服务中心</li>
                    <li style="margin-left: 80px;">友情链接</li>
                </ul>
            </li>
            <br />
            <li style="margin-top: 20px;">
                <ul style="">
                    <li>课工场简介</li>
                    <li style="margin-left: 65px;">系列课</li>
                    <li style="margin-left: 95px;">微社区</li>
                    <li style="margin-left: 95px;">课工场</li>
                </ul>
            </li>
            <br />
            <li style="margin-top: 20px;">
                <ul style="">
                    <li>EKGC简介</li>
                    <li style="margin-left: 70px;">岗位课</li>
                    <li style="margin-left: 93px;">周边商城</li>
                    <li style="margin-left: 80px;">北大青鸟</li>
                </ul>
            </li>
            <br />
            <li style="margin-top: 20px;">
                <ul style="">
                    <li>网站地图</li>
                    <li style="margin-left: 85px;">教材</li>
                    <li style="margin-left: 105px;">帮助中心</li>
                </ul>
            </li>
            <br />
            <li style="margin-top: 20px;">
                <ul style="">

                    <li>服务条款</li>
                    <li style="margin-left: 85px;">师资</li>
                </ul>
            </li>
            <br />
            <li style="margin-top: 20px;">
                <ul style="">
                    <li>版权声明</li>
                </ul>
            </li>

        </ul>

    </div>
    <hr />
    <a
            style="font-size: 11px; color: #767676; position: relative; left: 80px;">2020
        北京课工场教育科技有限公司 版权所有 京ICP备15057271号 京公网安备11010802017390号</a> <a
        style="font-size: 11px; color: #767676; margin-left: 500px; position: relative; left: 250px;">客服邮箱
    ke@kgc.cn</a>
</div>
</body>

</html>