<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>系列课</title>
    <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/layer/layer.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css">
        html,
        body {
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

        #fengge {
            background: url(/static/img/series_list_header.jpg);
            width: 100%px;
            height: 200px;
        }

        .feilei:hover {
            color: #AECA2D;
        }

        .feilei {
            color: #5A5A5A;
        }

        #md-large-widget-content hover img {
            box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.3);
        }

        .ct-coll-item a.ct-coll-thumb:hover img {
            box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.3);
            opacity: 0.9;
        }
    </style>
    <link rel="shortcut icon"  href="/static/img/zhihuilogo.png" >

</head>

<body style="background-color: #F5F5F5;">
<!--导航栏-->
<div style="background-color: white;margin-top: -10px;height: 70px;">
    <ul style="list-style: none;display:inline-block;margin-top: 10px;">
        <li style="margin-left: 140px;"><a href="daxuejiaocai.jsp"><img src="/static/img/1555375994280734.png"></a></li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">直播</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">系列</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">岗位</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">实战</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">题库</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">社区</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">教材</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">阿里云</a>
        </li>
        <li>
            <a class="wode" href="#" name="tou" style="position: relative;top: -20px;">社区</a>
        </li>
        <c:if test="${sessionScope.username != null }">
            <c:if test="${sessionScope.usertype==1}">
                <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.username }&nbsp;&nbsp;&nbsp;同学</a>
            </c:if>
            <c:if test="${sessionScope.usertype==2}">
                <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.username }&nbsp;&nbsp;&nbsp;老师</a>
            </c:if>
            <c:if test="${sessionScope.usertype==3}">
                <a class="xinwenhover" id="liuou" href="#" href="#" style="font-size: 13px; position: relative; top: -20px; margin-left: 50px;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.username }&nbsp;&nbsp;&nbsp;管理员</a>
                <a style="margin-left:50px" href="guanlizhu">后台</a>
            </c:if>
           <%-- <c:forEach items="${sessionScope.denglu}" var="d">

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
            <li>
                <a href="#" style="margin-left: 120px; color: #AECA2D;position: relative;top: -20px">APP下载</a>
            </li>
            <li>
                <a class="wode" href="denglu.jsp"  style="position: relative;top: -20px">登录</a>
            </li>
            <li style="position: relative;top: -20px">|</li>
            <li>
                <a class="wode" href="zhuce.jsp" style="position: relative;top: -20px">注册</a>
            </li>
        </c:if>
    </ul>
</div>

<!--风格图片-->
<div id="fengge">
    <center>
        <a style="color: white;font-weight:400;font-size: 35px;position: relative;top: 50px;">系列课</a>
        <br />
        <a style="color: white;font-weight:400;font-size: 15px;position: relative;top: 70px;">精选优质内容，适合在职充电人群和为兴趣学习的极客发烧友，满足学习兴趣、提升职业技能</a>
    </center>
</div>
<!--分类导航-->
<center>
    <div style="width: 100%;height: 60px;background-color: white;position: relative;top: -20px;">
        <ul>
            <li>
                <a class="feilei" href="xilie?cao=quan" style="font-size: 18px;position: relative;top: 20px;">全部</a>
            </li>
            <li>
                <a class="feilei" href="xilie?cao=chuang" style="font-size: 18px;position: relative;top: 20px;">创意设计</a>
            </li>
            <li>
                <a class="feilei" href="xilie?cao=java" style="font-size: 18px;position: relative;top: 20px;">java大数据</a>
            </li>
            <li>
                <a class="feilei" href="xilie?cao=qian" style="font-size: 18px;position: relative;top: 20px;">前端</a>
            </li>
            <li>
                <a class="feilei" href="xilie?cao=yun" style="font-size: 18px;position: relative;top: 20px;">云计算</a>
            </li>
            <li>
                <a class="feilei" href="xilie?cao=wang" style="font-size: 18px;position: relative;top: 20px;">网络营销</a>
            </li>
            <li>
                <a class="feilei" href="xilie?cao=geng" style="font-size: 18px;position: relative;top: 20px;">更多技术</a>
            </li>
        </ul>
    </div>
</center>

<!--课程图片-->
<ul style="margin-left: 90px;">
    <script type="text/javascript">
        //alert("you ");
    </script>
    <c:forEach items="${requestScope.lie }" var="x">
        <li style="margin-top: 20px;">
            <div class="ct-coll-item">
                <a class="ct-coll-thumb" href="xiliekecheng?name=${x.name }&username=${sessionScope.username}&liu=0">
                    <img src="quan/${x.src }.png" width="230px" height="285px" />
                </a>
        </li>
    </c:forEach>

</ul>
<c:if test="${applicationScope.xiliekong eq 1}">
    <script type="text/javascript">
        //alert("哈哈");
        layer.msg('请登录后在执行该操作', function(){
//关闭后的操作
        });
        ${applicationScope.xiliekong=2}
    </script>
</c:if>
<!--底部-->
<div style="background-color:#F0F0F0 ;width: 100%;height: 340px;">
    <div style="margin-left:240px;">
        <img src="/static/img/1546929407811629.jpg" style="margin-top: 50px;" />
        <img src="/static/img/1546929756610527.png" style="margin-top: 50px;margin-left: 20px;" />
        <ul style="margin-top: -130px;margin-left: 300px;">
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
                <ul style=";">

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
    <a style="font-size: 11px;color: #767676;position: relative;left: 80px;">2020 北京课工场教育科技有限公司 版权所有 京ICP备15057271号 京公网安备11010802017390号</a>
    <a style="font-size: 11px;color: #767676;margin-left: 500px;position: relative;left:250px;">客服邮箱 ke@kgc.cn</a>
</div>
</body>

</html>