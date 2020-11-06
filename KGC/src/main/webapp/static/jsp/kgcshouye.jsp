<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/static/statics/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/zhuye.css" />
    <link type="text/css" href="/static/css/zzsc.css" rel="stylesheet" />
    <link rel="stylesheet" href="/static/css/style.css">
    <script src="/static/js/jquery.min.js"></script>
    <script src="/static/js/script.js"></script>
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/js/zhuye.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css">
        body{
            position: relative;
            background: #EFF2F4;
            font: normal 13px "宋体" !important;
        }
        body,div,ul,li,p,a,img{
            padding: 0;
            margin: 0;
        }
        /*右侧悬浮菜单*/
        .slide{
            width: 50px;
            height: 250px;
            position: fixed;
            top: 50%;
            margin-top: -126px;
            background: #018D75;
            right: 0;
            border-radius: 5px 0 0 5px;
            z-index: 999;
        }
        .slide ul{
            list-style: none;
        }
        .slide .icon li{
            width: 49px;
            height: 50px;
            background: url(/static/statics/images//icon.png) no-repeat;
        }
        .slide .icon .up{
            background-position:-330px -120px ;
        }
        .slide .icon li.qq{
            background-position:-385px -73px ;
        }
        .slide .icon li.tel{
            background-position:-385px -160px ;
        }
        .slide .icon li.wx{
            background-position:-385px -120px ;
        }
        .slide .icon li.down{
            background-position:-330px -160px ;
        }
        .slide .info{
            top: 50%;
            height: 147px;
            position: absolute;
            right: 100%;
            background: #018D75;
            width: 0px;
            overflow: hidden;
            margin-top: -73.5px;
            transition:0.5s;
            border-radius:4px 0 0 4px ;
        }
        .slide .info.hover{
            width: 145px;

        }
        .slide .info li{
            width: 145px;
            color: #CCCCCC;
            text-align: center;
        }
        .slide .info li p{
            font-size: 1.1em;
            line-height: 2em;
            padding: 15px;
            text-align: left;
        }
        .slide .info li.qq p a{
            display: block;
            margin-top: 12px;
            width: 100px;
            height: 32px;
            line-height: 32px;
            color: #00DFB9;
            font-size: 16px;
            text-align: center;
            text-decoration: none;
            border: 1px solid #00DFB9;
            border-radius: 5px;
        }
        .slide .info li.qq p a:hover{
            color: #FFFFFF;
            border: none;
            background: #00E0DB;
        }
        .slide .info li div.img{
            height: 100%;
            background: #DEFFF9;
            margin: 15px;
        }
        .slide .info li div.img img{
            width: 100%;
            height: 100%;
        }
        /*控制菜单的按钮*/
        .index_cy{
            width: 30px;
            height: 30px;
            background: url(/static/statics/images//index_cy.png);
            position: fixed;
            right: 0;
            top: 50%;
            margin-top: 140px;
            background-position: 62px 0;
            cursor: pointer;
        }
        .index_cy2{
            width: 30px;
            height: 30px;
            background: url(/static/statics/images//index_cy.png);
            position: fixed;
            right: 0;
            top: 50%;
            margin-top: 140px;
            background-position: 30px 0;
            cursor: pointer;
        }

        /*自适应 当屏小于1050时隐藏*/
        @media screen and (max-width: 1050px) {
            .slide{
                display: none;
            }
            #btn{
                display: none;
            }

        }
    </style>
</head>

<body>
<!--最上面一层-->
<div style="height: 40px;border: 1px solid #B2B2B2;position: relative;top: -3px;line-height: 40px;">
    <d style="margin-left: 170px;color: #545454;">|</d>
    <d style="color: #545454;color: #545454;margin-left: 10px;font-size: 12px;">在线课程-Ekgc.cn</d>
    <d style="color: #545454;margin-left: 10px;">|</d>

    <img src="/static/statics/images/shouji.ico" style="margin-left: 720px;position: relative;top: 5px;" />
    <d style="color: #545454;color: #545454;position: relative;top: 2px;">手机网</d>

    <a href="/static/jsp/xiaoquchaxun.jsp"><input type="button" value="线下服务中心" style="width: 130px; background-color: #AECA2D;height: 20px;position: relative;top: 2px;color: white;border-radius: 5px;font-size: 12px;" /></a>
    <c:if test="${sessionScope.username==null}">
        <a class="xinwenhover" id="liuou1" href="/static/jsp/denglu.jsp" href="#" style="font-size:13px ;position: relative;top: 2px;margin-left: 50px;">登录</a>
        <o style="font-size:13px ;position: relative;top: 2px;margin-left: 5px;">|</o>
        <a class="xinwenhover"	 id="liuou1" href="/static/jsp/zhuce.jsp" style="font-size:13px ;position: relative;top: 2px;margin-left: 5px;">注册</a>
    </c:if>
    <c:if test="${sessionScope.username!=null}">
        <c:if test="${sessionScope.usertype==1}">
            <a class="xinwenhover" id="liuou11" href="/doluntanzhuye" href="#" style="font-size:13px ;position: relative;top: 2px;margin-left: 50px;">欢迎你,${userxinxi.nickname}&nbsp;&nbsp;同学</a>
            <a href="/static/jsp/main.jsp">学生管理系统</a>
        </c:if>
        <c:if test="${sessionScope.usertype==2}">
            <a class="xinwenhover" id="liuou11" href="/static/jsp/luntanzhuye.jsp" href="#" style="font-size:13px ;position: relative;top: 2px;margin-left: 50px;">欢迎你,${userxinxi.nickname}&nbsp;&nbsp;老师</a>
            <a href="/static/jsp/main.jsp">学生管理系统</a>
        </c:if>
        <c:if test="${sessionScope.usertype==3}">
            <a class="xinwenhover" id="liuou11" href="/static/jsp/luntanzhuye.jsp" href="#" style="font-size:13px ;position: relative;top: 2px;margin-left: 50px;">欢迎你,${userxinxi.nickname}&nbsp;&nbsp;管理员</a>
            <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i>
        </c:if>
    </c:if>
</div>
<script type="text/javascript">
    $("#liuou").mouseover(function(){
        $(this).css("color","#AECA2D");
    })
    $("#liuou").mouseout(function(){
        $(this).css("color","black");
    })
    $("#liuou1").mouseover(function(){
        $(this).css("color","#AECA2D");
    })
    $("#liuou1").mouseout(function(){
        $(this).css("color","red");
    })
</script>
<!--logo层-->
<div style="height: 120px;">
    <img src="/static/statics/images/logo.png" style="margin-left: 165px;margin-top: 20px;" id="logo"/>
    <img src="/static/statics/images/Phone_old_24px_1198600_easyicon.net.ico" width="25px" height="25px" style="margin-left: 575px;margin-top: 10px;position: relative;top: -5px;" />
    <d style="color: #CBCBCC;font-size: 30px;margin-left: 15px;position: relative;top: -6px;">400-0073-888</d>
</div>

<!--四个hover-->
<div id="sihover">
    <img src="/static/statics/images/111.png" width="240px" height="110px" id="sihover1" />
    <img src="/static/statics/images/222.png" width="240px" height="110px" style="margin-left: 30px;" id="sihover2" />
    <img src="/static/statics/images/333.png" width="240px" height="110px" style="margin-left: 30px;" id="sihover3" />
    <img src="/static/statics/images/444.png" width="240px" height="110px" style="margin-left: 30px;" id="sihover4" />

</div>
<!--课工场新闻-->
<div id="xinwen">
    <h1 style="margin-left: -50px;font-size: 19px;font-weight: 400;margin-top: 20px;color: #5A5A5A;">课工场新闻</h1>
    <div id="xinwenneirong" style="margin-top: 40px;">
        <!--第一个图片-->
        <div style="float: left;" id="xinwentupian1">
            <img src="/static/statics/images/xinwenxintu1.png" width="205px" height="310px" style="float: left;" class="xinwentupian" />
            <!--<div id="xinwen1zi">
                <d style="float: left;position: absolute;top: 110px;left: 20px;color: #FFFFFF;font-size: 25px;">新闻资讯</d>
                <d style="float: left;position: absolute;top: 160px;left: 25px;color: #FFFFFF;font-size: 17px;">News</d>
                <d style="float: left;position: absolute;top: 290px;left: 25px;color: #FFFFFF;font-size: 13px;">[新闻]荣誉见证实力，课...</d>
                <d style="float: left;position: absolute;top: 315px;left: 25px;color: #FFFFFF;font-size: 13px;">[新闻]亮相产学合作协...</d>
                <d style="float: left;position: absolute;top: 340px;left: 25px;color: #FFFFFF;font-size: 13px;">[新闻]课工场大数据学...</d>
            </div>-->
        </div>

        <!--第二个图片-->
        <div>
            <img src="/static/statics/images/biaotou2.jpg" style="margin-left: 10px;float: left;position: absolute;top: 85px;left: 215px;" class="xinwentupian" />
            <div style="width: 290px;height: 50px;float: left;background-color:rgba(14,16,18,0.5);position: absolute;left: 226px;top: 345px;">
                <d style="color: white;font-size: 18px;position: absolute;top: 15px;left: 35px;" ;>2018年-互联网k刊封面人物</d>

            </div>
        </div>

        <!--第三个图片-->
        <div>
            <div class="card" style="position: absolute;top: 84px;left: 819px;">
                <div class="image">
                    <div class="scale" style="background:url('/static/statics/images/biaotou4.jpg') no-repeat center ;"></div>
                </div>
            </div>
            <!--<img src="/static/statics/images/biaotou3.jpg" style="margin-left: 10px;position: absolute;top: 85px;left: 800px;" width="260px" />-->
            <div style="width: 258px;height: 200px;float: left;position: absolute;top: 195px;left: 535px;">
                <d class="xinwenhover" style="font-size: 20px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 15px;">媒体报道</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 55px;">[媒体]15名学员r入职阿里，课工场以...</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 80px;">[媒体]课工场荣获决胜网 2018年度教...</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 105px;">[媒体]第43届ACM-ICPC亚洲区域赛...</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 130px;">[媒体]肖睿：人工智能教育领航者...</d>
                <br />
                <d class="more" style="font-size: 14px;color: #AECA2D;float: left;position: absolute;left: 190px;top: 170px;">More</d>
            </div>
        </div>

        <!--第四个图片-->
        <div>
            <div class="card" style="position: absolute;top: 84px;left: 542px;">
                <div class="image">
                    <div class="scale" style="background:url('/static/statics/images/biaotou3.jpg') no-repeat center ;"></div>
                </div>
            </div>
            <!--<img src="/static/statics/images/biaotou4.jpg" style="margin-left: 10px;position: absolute;top: 85px;left: 525px;" width="260px" />-->
            <div style="width: 258px;height: 200px;float: left;position: absolute;top: 195px;left: 810px;">
                <d class="xinwenhover" style="font-size: 20px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 15px;">课工场动态</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 55px;">[动态]课工场：深化协同育人产教融...</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 80px;">[动态]课工场创新AI学习新平台 产学...</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 105px;">[动态]课工场 "不止所见 超乎想象"...</d>
                <br />
                <d class="xinwenhover" style="font-size: 14px;color: #5A5A5A;float: left;position: absolute;left: 10px;top: 130px;">[动态]共"享"新未来 "北大课工场...</d>
                <br />
            </div>
        </div>

    </div>
</div>

<!--走进课工场-->
<div id="jinkegongchang " style="height: 400px; width: 100%;float: left;position: absolute;top: 1250px;background-color: #FAFAFA;">
    <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: relative;top: 10px;">走进课工场</d>
    <div style="margin-top: 30px;">
        <!--第一个图片-->
        <img id="zoujin1" src="/static/statics/images/zoujin1.png" width="205px" height="310px" style="position: absolute;left: 220px;" />

        <!--第二个图片-->
        <div class="card1" style="position: absolute;top: 57px;left:449px;">
            <div class="image1">
                <div class="scale1" style="background:url('/static/statics/images/zoujin12.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第三个图片-->
        <div class="card2" style="position: absolute;top: 215px;left:449px;">
            <div class="image2">
                <div class="scale2" style="background:url('/static/statics/images/zoujin13.jpg') no-repeat center ;"></div>

                <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 95px;left: -90px;" ;>
                    <center style="position: relative;left: -10px;font-weight: 900;">创始人简介</center>
                    <br />
                    <center style="position: relative;left:22px;font-size: 14px;top: -20px;font-weight: 500px;">中国IT职业教育l领军人物</center>
                </d>

            </div>
        </div>

        <!--第四个图片-->
        <div class="card2" style="position: absolute;top: 215px;left:687px;">
            <div class="image2">
                <div class="scale2" style="background:url('/static/statics/images/zoujin14.jpg') no-repeat center ;"></div>
                <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 95px;left: -90px;" ;>
                    <center style="position: relative;left: -20px;font-weight: 900;">根值北大</center>
                    <br />
                    <center style="position: relative;left:8px;font-size: 14px;top: -20px;font-weight: 500px;">师出名门，不忘初心</center>
                </d>
            </div>
        </div>

        <!--第五个-->
        <div id="zoujinshipin">
            <video controls="controls" width="380px" height="400px" style="float: right;margin-right: 220px;margin-top: -92px;">
                <source src="/static/statics/images/zoujin15.mp4"></source>
            </video>
            <d style="height: 95px;color: #545454;font-size: 18px;position: absolute;top: 35px;left: 35px;background-color:rgba(174,202,45,0.7);width: 380px;position: absolute;top:270px;left: 918px;" ;>
                <center style="position: relative;left: -10px;font-weight: 700;color: white;top: 27px;">还在犹豫什么？ 快来加入我们吧</center>

            </d>
        </div>

        <div id="zoujintupian">
            <div class="card3" style="position: absolute;top: 56px;left:919px;">
                <div class="image3">
                    <div class="scale3" style="background:url('/static/statics/images/zoujin2.png') no-repeat center ;;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(252,253,250,0.7);width: 500px;position: absolute;top:250px;left: -90px;" ;>
                        <center style="position: relative;left: -70px;font-weight: 900;top: 5px;">三分钟了解课工场</center>
                        <br />
                        <center style="position: relative;left:-45px;font-size: 14px;top: -15px;font-weight: 500px;">专注于企业IT岗位专业人才培养</center>
                    </d>
                </div>
            </div>
        </div>






    </div>

</div>


<!--教学与研发-->
<div id="jiaoxueyuyanfa" style="height: 380px; width: 100%;float: left;position: absolute;top: 1650px;">
    <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: relative;top: 10px;">教学与研发</d>
    <!--第一个图片-->
    <div class="cardjiao" style="position: absolute;top: 50px;left:220px;">
        <div class="imagejiao">
            <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue11.png') no-repeat center ;background-size: 205px;"></div>
        </div>
    </div>
    <!--第二个图片-->
    <div class="cardjiao" style="position: absolute;top: 50px;left:435px;">
        <div class="imagejiao">
            <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue12.jpg') no-repeat center ;background-size: 205px;"></div>
            <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                <center style="position: relative;left: -15px;font-weight: 900;top: 5px;">总监级师资</center>
                <br />
                <center style="position: relative;left:30px;font-size: 13px;top: -15px;font-weight: 500px;">打造复合型互联网高端技术人才</center>
            </d>

        </div>
    </div>
    <!--第三个图片-->
    <div class="cardjiao" style="position: absolute;top: 50px;left:655px;">
        <div class="imagejiao">
            <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue13.jpg') no-repeat center ;background-size: 205px;"></div>
            <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                <center style="position: relative;left: -26px;font-weight: 900;top: 5px;">大咖师资</center>
                <br />
                <center style="position: relative;left:29px;font-size: 13px;top: -15px;font-weight: 500px;">云集国内外一线互联网企业专家</center>
            </d>

        </div>
    </div>
    <!--第四个图片-->
    <div class="cardjiao" style="position: absolute;top: 50px;left:878px;">
        <div class="imagejiao">
            <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue14.jpg') no-repeat center ;background-size: 205px;"></div>
            <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                <center style="position: relative;left: 20px;font-weight: 900;font-size: 16px;top: 5px;">课工场学习科学研究院</center>
                <br />
                <center style="position: relative;left:30px;font-size: 14px;top: -12px;font-weight: 500px;">助力课程研发，提升学员就业</center>
            </d>

        </div>
    </div>
    <!--第五个图片-->
    <div class="cardjiao" style="position: absolute;top: 50px;left:1095px;">
        <div class="imagejiao">
            <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue15.jpg') no-repeat center ;background-size: 205px;"></div>
            <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                <center style="position: relative;left: -20px;font-weight: 900;top: 5px;">智慧教材</center>
                <br />
                <center style="position: relative;left:25px;font-size: 14px;top: -15px;font-weight: 500px;">多所211高校授课教材首选</center>
            </d>

        </div>
    </div>




</div>


<!--课程体系-->
<div id="jinkegongchang " style="height: 400px; width: 100%;float: left;position: absolute;top: 2020px;background-color: #FAFAFA;">
    <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: relative;top: 10px;">课程体系</d>
    <div style="margin-top: 30px;">
        <!--第一个图片-->
        <img class="kecheng" src="/static/statics/images/kctixi1.png" width="205px" height="310px" style="position: absolute;left: 220px;" />



        <!--第二个图片-->
        <div class="cardke" style="position: absolute;top: 55px;left:440px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi2.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第三个图片-->
        <div class="cardke" style="position: absolute;top: 215px;left:440px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi3.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第四个图片-->
        <div class="cardke" style="position: absolute;top: 55px;left:660px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi4.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第五个图片-->
        <div class="cardke" style="position: absolute;top: 55px;left:880px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi5.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第六个图片-->
        <div class="cardke" style="position: absolute;top: 55px;left:1100px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi6.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第七个图片-->
        <div class="cardke" style="position: absolute;top: 215px;left:660px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi7.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第八个图片-->
        <div class="cardke" style="position: absolute;top: 215px;left:880px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi8.jpg') no-repeat center ;"></div>
            </div>
        </div>

        <!--第九个图片-->
        <div class="cardke" style="position: absolute;top: 215px;left:1100px;">
            <div class="imageke">
                <div class="scaleke" style="background:url('/static/statics/images/kctixi9.jpg') no-repeat center ;"></div>
            </div>
        </div>














    </div>

</div>


<!--学员服务-->
<div>
    <div id="xueyaunfuwu " style="height: 400px; width: 100%;float: left;position: absolute;top: 2420px;">
        <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: relative;top: 10px;">学员服务</d>
        <div style="margin-top: 30px;">
            <!--第一个图片-->
            <a href="xiaoyuan/xiaoyuantong.html" target="_blank"><img class="kecheng" src="/static/statics/images/xueyuan1.png" width="205px" height="310px" style="position: absolute;left: 220px;" /></a>



            <!--第二个图片-->
            <div class="cardke" style="position: absolute;top: 55px;left:440px;">
                <div class="imageke">
                    <div class="scaleke" style="background:url('/static/statics/images/xueyuan2.jpg	') no-repeat center ;"></div>
                </div>
            </div>

            <!--第三个图片-->
            <div class="cardke" style="position: absolute;top: 215px;left:440px;">
                <div class="imageke">
                    <div class="scaleke" style="background:url('/static/statics/images/xueyuan4.jpg') no-repeat center ;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 95px;left: -90px;" ;>
                        <center style="position: relative;left: 10px;font-weight: 900;font-size: 16px;">人工智能学习平台</center>
                        <br />
                        <center style="position: relative;left:1px;font-size: 14px;top: -20px;font-weight: 500px;">让学习过程更轻松</center>
                    </d>
                </div>
            </div>

            <!--第四个图片-->
            <div class="cardke" style="position: absolute;top: 55px;left:660px;">
                <div class="imageke">
                    <div class="scaleke" style="background:url('/static/statics/images/xueyuan3.jpg') no-repeat center ;"></div>
                </div>
            </div>





            <!--第七个图片-->
            <div class="cardke" style="position: absolute;top: 215px;left:660px;">
                <div class="imageke">
                    <div class="scaleke" style="background:url('/static/statics/images/xueyuan5.jpg') no-repeat center ;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 95px;left: -90px;" ;>
                        <center style="position: relative;left: -45px;font-weight: 900;font-size: 16px;">题库</center>
                        <br />
                        <center style="position: relative;left:30px;font-size: 14px;top: -20px;font-weight: 500px;">个性化定制，系统化巩固知识</center>
                    </d>
                </div>
            </div>




            <div class="xueyuanfuwutupian">
                <div class="cardxue " style="position: absolute;top: 55px;left:879px;">
                    <div class="imagexue ">
                        <div id="xueyuanfuwudatu" class="scalexue " style="background:url('/static/statics/images/xueyaun6.jpg') no-repeat center ;;"></div>
                        <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(252,253,250,0.7);width: 500px;position: absolute;top:250px;left: -90px;" ;>
                            <center style="position: relative;left: -70px;font-weight: 900;top: 5px;">三分钟了解课工场</center>
                            <br />
                            <center style="position: relative;left:-45px;font-size: 14px;top: -15px;font-weight: 500px;">专注于企业IT岗位专业人才培养</center>
                        </d>
                    </div>
                </div>
            </div>
            <div class="xueyuanfuwuxiaotupian" style="background-color: #E1E1E1;width: 420px;position: absolute;top: 300px;left: 880px;height: 65px;" >
                <img src="/static/statics/images/xueyaun7.png"  width="70px" height="40px" style="margin-left: 9px;margin-top: 15px;" id="xiaotu1"/>
                <img src="/static/statics/images/xueyaun8.png"  width="70px" height="40px"  style="margin-left: 9px;margin-top: 15px;" id="xiaotu2"/>
                <img src="/static/statics/images/xueyaun9.png"  width="70px" height="40px" style="margin-left: 9px;margin-top: 15px;"  id="xiaotu3"/>
                <img src="/static/statics/images/xueyaun10.png"  width="70px" height="40px" style="margin-left: 9px;margin-top: 15px;"  id="xiaotu4"/>
                <img src="/static/statics/images/xueyaun11.png"  width="70px" height="40px" style="margin-left: 9px;margin-top: 15px;"  id="xiaotu5"/>
            </div>

            <div id="xueyuanfuwushipin1" >
                <video controls="controls" width="420px" height="254px" style="float: right;position: absolute;top: 49px;left: 880px;">
                    <source src="/static/statics/images/r5_video1 (1).mp4 "></source>
                </video>
            </div>
            <div id="xueyuanfuwushipin2" >
                <video controls="controls" width="420px" height="254px" style="float: right;position: absolute;top: 49px;left: 880px;">
                    <source src="/static/statics/images/r5_video2.mp4 "></source>
                </video>
            </div>
            <div id="xueyuanfuwushipin3" >
                <video controls="controls" width="420px" height="254px" style="float: right;position: absolute;top: 49px;left: 880px;">
                    <source src="/static/statics/images/r5_video3.mp4"></source>
                </video>
            </div>
            <div id="xueyuanfuwushipin4" >
                <video controls="controls" width="420px" height="254px" style="float: right;position: absolute;top: 49px;left: 880px;">
                    <source src="/static/statics/images/r5_video4.mp4 "></source>
                </video>
            </div>
            <div id="xueyuanfuwushipin5" >
                <video controls="controls" width="420px" height="254px" style="float: right;position: absolute;top: 49px;left: 880px;">
                    <source src="/static/statics/images/r5_video5.mp4 "></source>
                </video>
            </div>

        </div>



















        </a>
    </div>


    <!--教学就业-->
    <div id="jiaoxuejiuye" style="background-color: #FAFAFA;width: 100%;height: 390px;float: left;position: absolute;top: 2820px;">
        <div id="jiaoxueyuyanfa" style="height: 380px; width: 100%;float: left;position: absolute;top: 0px;">
            <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: relative;top: 10px;">教学就业</d>
            <!--第一个图片-->
            <div class="cardjiao" style="position: absolute;top: 50px;left:220px;">
                <div class="imagejiao">
                    <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue1.png') no-repeat center ;background-size: 205px;"></div>
                </div>
            </div>
            <!--第二个图片-->
            <div class="cardjiao" style="position: absolute;top: 50px;left:435px;">
                <div class="imagejiao">
                    <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue2.jpg') no-repeat center ;background-size: 205px;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                        <center style="position: relative;left: -20px;font-weight: 900;top: 5px;">明星学员</center>
                        <br />
                        <center style="position: relative;left:10px;font-size: 13px;top: -15px;font-weight: 500px;">有梦想的人生走的更远</center>
                    </d>

                </div>
            </div>
            <!--第三个图片-->
            <div class="cardjiao" style="position: absolute;top: 50px;left:655px;">
                <div class="imagejiao">
                    <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue3.jpg') no-repeat center ;background-size: 205px;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                        <center style="position: relative;left: -26px;font-weight: 900;top: 5px;">学员活动</center>
                        <br />
                        <center style="position: relative;left:-20px;font-size: 13px;top: -15px;font-weight: 500px;">IT生活-不枯燥</center>
                    </d>

                </div>
            </div>
            <!--第四个图片-->
            <div class="cardjiao" style="position: absolute;top: 50px;left:878px;">
                <div class="imagejiao">
                    <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue4.jpg') no-repeat center ;background-size: 205px;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                        <center style="position: relative;left: -30px;font-weight: 900;font-size: 16px;top: 5px;">职场攻略</center>
                        <br />
                        <center style="position: relative;left:30px;font-size: 14px;top: -12px;font-weight: 500px;">从面试到入职、助你稳步前行</center>
                    </d>

                </div>
            </div>
            <!--第五个图片-->
            <div class="cardjiao" style="position: absolute;top: 50px;left:1095px;">
                <div class="imagejiao">
                    <div class="scalejiao" style="background:url('/static/statics/images/jiaoxue5.jpg') no-repeat center ;background-size: 205px;"></div>
                    <d style="height: 60px;color: #545454;font-size: 18px;position: absolute;top: 15px;left: 35px;background-color:rgba(194,196,196,0.7);width: 320px;position: absolute;top: 230px;left: -90px;" ;>
                        <center style="position: relative;left: -30px;font-weight: 900;top: 5px;">薪情报告</center>
                        <br />
                        <center style="position: relative;left:25px;font-size: 13px;top: -15px;font-weight: 500px;">课工场六大领域就业薪资大数据</center>
                    </d>

                </div>
            </div>




        </div>

    </div>

    <div class="test" style="float: left;position: absolute;top: 3270px;left: 300px;width: 1000px;height: 300px;">
        <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: absolute;left: -290px;top: -110px;">高薪就业</d>
        <ul>
            <li><a href="#"><img src="/static/statics/images/ping1.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping2.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping3.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping4.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping5.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping6.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping7.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping8.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping9.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
            <li><a href="#"><img src="/static/statics/images/ping10.png" width="140" height="80" alt="CSS3鼠标悬停图片圆形放大特效"></a></li>
        </ul>
    </div>

    <div class="hezuo" style="float: left;position: absolute;top: 3700px;width: 1000%;height: 300px;background-color: #FAFAFA;">
        <d style="margin-left: 165px;font-size: 19px;font-weight: 400;margin-top: 40px;color: #5A5A5A;position: absolute;left: 0px;top: 10px;">
            <d id="hezuoyou" style="color:#AECA2D ;">友情链接</d>
            <d>|</d>
            <d id="hezuoxiao">合作高校</d>
        </d>
        <div style="position: absolute;left: 300px;top: 120px;">
            <img src="/static/statics/images/hezuo1.png"  width="865px" height="155px" id="hezuotupian"/>
        </div>

    </div>




    <div class="header">
        <div class="menu-bar">
            <div class="view">
                <div class="category">
                    <h2>热点关注</h2>
                    <ul class="category-option">
                        <li class="cat-item top-cat">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#" style="font-size: 10px;"><i class="i-t"></i >人工智能学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:#e62318 !important;">AI</a>
                                            <a href="#" style="color:#e62318 !important;">Deeplearning</a>
                                            <a href="#">算法优化</a>
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>大数据学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:#e62318 !important;">Java</a>
                                            <a href="#">Hadoop</a>
                                            <a href="#">Spark</a>
                                            <a href="#">Kafka</a>
                                            <!--<a href="#">酒柜/装饰柜</a>
                                    <a href="#">屏风</a>
                                    <a href="#">休闲椅/凳</a>
                                    <a href="#">间厅/玄关柜</a>
                                    <a href="#">花架/装饰架</a>
                                    <a href="#" style="color:#e62318 !important;">客厅套装</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>区块链学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#">Golang</a>
                                            <a href="#">密码学</a>
                                            <a href="#" style="color:#e62318 !important;">智能合约</a>
                                            <!--<a href="#">餐边柜</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>云计算学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:#e62318 !important;">Linux</a>
                                            <a href="#">Python</a>
                                            <a href="#">Shell</a>
                                            <a href="#">MySql</a>
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>D学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#">短视频制作</a>
                                            <a href="#" style="color:#e62318 !important;">抖音引流</a>
                                            <a href="#">带货</a>
                                            <a href="#">变现</a>
                                            <!--<a href="#">儿童桌</a>
                                    <a href="#">儿童椅</a>
                                    <a href="#">儿童柜类</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#" style="font-size: 10px;"><i class="i-t"></i>互联网软件学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#">JavaScript</a>
                                            <a href="#" style="color:#e62318 !important;">ES6</a>
                                            <a href="#">Vue.js</a>
                                            <a href="#">小程序</a>
                                            <!--<a href="#">藤艺家具</a>
                                    <a href="#">折叠床</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>创意学院</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#" style="color:#e62318 !important;">UE4</a>
                                            <a href="#">U3D</a>
                                            <a href="#">UX</a>
                                            <a href="#">交互</a>
                                            <a href="#">游戏UI</a>
                                        </li>
                                    </ul>

                                </div>
                                <div class="sub-cat-brand Left">
                                    <!--<h6>推荐学习</h6>-->
                                    <div class="tag">
                                        <!--<a href="#" style="color:orangered !important">Java</a>
                                        <a href="#">AI</a>
                                        <a href="#">算法优化</a>
                                        <a href="#">密码学</a>
                                        <a href="#">Spark</a>
                                        <a href="#">Linux</a>
                                        <a href="#" style="color:orangered !important">JavaScript</a>
                                        <a href="#">智能合约</a>
                                        <a href="#">Golang</a>
                                        <a href="#" style="color:orangered !important">短视频制作</a>
                                        <a href="#">变现</a>
                                        <a href="#">小程序</a>-->
                                    </div>
                                    <a href="#"><img src="/static/statics/images/1.jpg" width="190" height="260">
                                    </a>
                                </div>
                            </div>
                            <i class="icon i0"></i>
                            <a class="txt" href="#">课</a>
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>人工智能</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">Python基础</a>
                                            <a href="#">Python进阶</a>
                                            <a href="#">数据库实战开发</a>
                                            <a href="#">web前段开发</a>
                                            <a href="#">Python爬虫开发</a>
                                            <a href="#">Django框架</a>
                                            <a href="#">云计算平台</a>
                                            <a href="#">数据分析</a>
                                            <a href="#">人工智能</a>
                                            <!--<a href="#">床尾凳</a>
                                    <a href="#" style="color:orangered !important">卧室套装</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>简介</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#" style="color:orangered !important">人工智能（Artificial Intelligence），英文缩写为AI。它是研究、开发用于模拟、延伸和扩展人的智能的理论、方法、技术及应用系统的一门新的技术科学。</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>人工智能可以做</h6>
                                    <div class="tag">
                                        <a href="#">AI算法工程师</a>
                                        <a href="#" style="color:orangered !important">图像识别工程师</a>
                                        <a href="#">自然语言处理工程师</a>
                                        <a href="#">语音识别工程师</a>
                                        <a href="#">数据挖掘工程师</a>
                                        <a href="#" style="color:orangered !important">数据分析工程师</a>

                                    </div>
                                    <!--	<a href="#"><img src="/static/statics/images/2.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i1"></i>
                            <a class="txt" href="#">人工智能</a>
                            <a class="txt" href="#">AI</a>

                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>大数据</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">JavsSE</a>
                                            <a href="#">数据库关键技术</a>
                                            <a href="#">大数据基础核心</a>
                                            <a href="#">Spark生态体系框架&大数据精选项目</a>
                                            <a href="#">Spark生态体系框架&企业无缝对接项目</a>
                                            <a href="#">Flink流式数据处理框架</a>

                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>推荐学习</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">Java基础入门</a>
                                            <a href="#">Java面向对象</a>
                                            <a href="#" style="color:orangered !important">Java高级API</a>
                                            <a href="#">MySQL</a>
                                            <a href="#">Java Web</a>
                                            <a href="#">SSM</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>市场价值</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">学完了java核心可胜任初级java工程师的工作需求，月薪8000~10000元</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/3.jpg" width="190" height="180">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i2"></i>
                            <a class="txt" href="kechengtixi.html">大数据</a>
                            <a class="txt" href="#">java</a>
                            <!--<a class="txt" href="#">电视柜</a>-->
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>区块链学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">Golang</a>
                                            <a href="#">密码学</a>
                                            <a href="#">智能合约</a>
                                            <!--<a href="#">餐边柜</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>简介</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">区块链是一个信息技术领域的术语。从本质上讲，它是一个共享数据库，存储于其中的数据或信息，具有“不可伪造”“全程留痕”“可以追溯”“公开透明”“集体维护”等特征。基于这些特征，区块链技术奠定了坚实的“信任“基础，创造了可靠的“合作”机制，具有广阔的运用前景。</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>概括</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">如果互联网技术解决的是通讯问题的话，区块链技术解决的是信任问题。</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/4.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i3"></i>
                            <a class="txt" href="#">区块链</a>
                            <a class="txt" href="#">密码学</a>
                            <!--<a class="txt" href="#">餐椅</a>-->
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>云计算学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">Linux</a>
                                            <a href="#">Python</a>
                                            <a href="#">Shell</a>
                                            <a href="#">MySQL</a>
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>云计算简介</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">云计算就是通过网络提供可伸缩的分布式计算能力 云计算三大服务模式：IaaS，PaaS，SaaS 云计算主要特点：集中式管理IT资源
                                            </a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>工作内容</h6>
                                    <div class="tag">
                                        <a href="#">部署、升级、迁移安全、高速稳定扩展、自动化</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/5.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i4"></i>
                            <a class="txt" href="#">云计算</a>
                            <a class="txt" href="#">Linux</a>
                            <a class="txt" href="#">Shell</a>
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>D学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#">短视频制作</a>
                                            <a href="#" style="color:orangered !important">抖音引流</a>
                                            <a href="#">带货</a>
                                            <a href="#">变现</a>
                                            <!--<a href="#">儿童桌</a>
                                    <a href="#">儿童椅</a>
                                    <a href="#">儿童柜类</a>-->
                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>课程</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">课工场D学院，是课工场下属特色学院之一，致力于研究新媒体创新技术，专注于研发短视频实战运行系列课程。 核心技能包含短视频运营、短视频拍摄、短视频剪辑、短视频后期制作、短视频引流、短视频变现、短视频在不同领域的应用等。
                                            </a>
                                            <!--<a href="#" style="color:orangered !important">上下床</a>
                                    <a href="#">高低床</a>
                                -->
                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>现推出</h6>
                                    <div class="tag">
                                        <a href="#">短视频时代，学院迎合市场需求，推出抖音运营2.0，抖音电商2.0量大爆款抖音课程。</a>
                                        <!--<a href="#" style="color:orangered !important">小童舍</a>
                                <a href="#">木彩</a>-->
                                    </div>
                                    <!--	<a href="#"><img src="/static/statics/images/6.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i5"></i>
                            <a class="txt" href="#">D学院</a>
                            <a class="txt" href="#">短视频制作</a>

                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>软件学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#">Javascript</a>
                                            <a href="#">ES6</a>
                                            <a href="#" style="color:orangered !important">Vue.js</a>
                                            <a href="#">小程序</a>

                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>内容</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">大型项目架构Redis、Linux、Nginx、Docker等</a>
                                            <a href="#">大数据可视化，利用ECharts、D3.js等完成企业级图形、图标展示数据功能</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>实战项目</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">盒马生鲜为一个电商类的小程序项目，其中实现了盒马生鲜小程序的大部分功能，如首页数据展示、商品列表、详情、加入购物车等操作。数据通过mock的形式来完成，对于初学小程序的学员，这个项目无疑是贯穿原生小程序开发良好的选择。</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/7.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i6"></i>
                            <a class="txt" href="#">JavaScript</a>
                            <a class="txt" href="#">ES6</a>
                        </li>
                        <li class="cat-item top-cat">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>创意设计</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:#e62318 !important;">UE4</a>
                                            <a href="#" style="color:#e62318 !important;">U3D</a>
                                            <a href="#">UX</a>
                                            <a href="#">交互</a>
                                            <a href="#">游戏UI</a>
                                            <!--<a href="#">灯具套装</a>
                                    <a href="#">LED灯/光源</a>-->
                                    </ul>

                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>营销学院</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#" style="color:#e62318 !important;">微信营销</a>
                                            <a href="#">电商</a>
                                            <a href="#">SEO</a>
                                            <a href="#">SEM</a>

                                            <a href="#" style="color:#e62318 !important;">社群</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>推荐学习</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">电商</a>
                                        <a href="#">SEO</a>
                                        <a href="#">SEM</a>
                                        <a href="#">社群</a>
                                        <a href="#" style="color:orangered !important">微信营销</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/8.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i7"></i>
                            <a class="txt" href="#">工</a>
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>创意设计</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">UE4</a>
                                            <a href="#">U3D</a>
                                            <a href="#" style="color:orangered !important">UX</a>
                                            <a href="#">交互</a>
                                            <a href="#">游戏UI</a>

                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>设计师</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#" style="color:orangered !important">全方位包裹式学习服务</a>
                                            <a href="#">以互联网设计师思维贯穿教学</a>
                                            <a href="#">经典设计软件基础与进阶</a>
                                            <a href="#">近500个案例与商业项目</a>
                                            <a href="#">线上视频随时随地学习</a>
                                            <a href="#">工作室模式运营形式</a>
                                            <a href="#">当下最火爆的C4D、AE技术</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>诠释二八法则</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">原创实战项目，学习即实力 我们只培养超越企业用人需求的高精尖UI设计师， 所以引进20多个原创实战项目，近300个实操案例， 学习即实习，上岗后可直接挑战2年工作经验的资深设计师。
                                        </a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/9.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i8"></i>
                            <a class="txt" href="#">创意设计</a>
                            <a class="txt" href="#">UX</a>
                            <!--<a class="txt" href="#">吸顶灯</a>-->
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>营销学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">微信营销</a>
                                            <a href="#">电商</a>
                                            <a href="#">SEO</a>
                                            <a href="#">SEM</a>
                                            <a href="#">社群</a>
                                            < </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>核心技能</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">可掌握网站的搭建、网站关键词的选取、网站诊断以及内外部优化的能力，并能完成关键词排名优化方案的撰写及优化工作。</a>
                                            <!--<a href="#" style="color:orangered !important">欧式浴室柜</a>
                            -->
                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>教学服务</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">线上预习复习</a>
                                        <a href="#">线下面授</a>
                                        <a href="#">大咖直播</a>
                                        <a href="#" style="color:orangered !important">项目实训</a>
                                        <a href="#">职业素养</a>
                                        <a href="#">推荐就业</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/10.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i9"></i>
                            <a class="txt" href="#">电商</a>
                            <a class="txt" href="#">SEO</a>
                            <a class="txt" href="#">SEM</a>
                        </li>
                        <li class="cat-item top-cat">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>代码学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#">Python</a>
                                            <a href="#" style="color:#e62318 !important;">C</a>
                                            <a href="#">C++</a>
                                            <a href="#" style="color:#e62318 !important;">Java</a>
                                            <a href="#" style="color:#e62318 !important;">JS</a>

                                        </li>
                                    </ul>

                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>北美大数据</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#" style="color:#e62318 !important;">Java核心</a>
                                            <a href="#">Hadoop</a>
                                            <a href="#" style="color:#e62318 !important;">Spark</a>
                                            <a href="#">Python</a>
                                            <a href="#">项目实战</a>
                                            <a href="#">机器学习</a>
                                            <a href="#">大数据系统化管理优化</a>
                                            <a href="#">阿里云平台</a>
                                            <a href="#" style="color:#e62318 !important;">就业项目</a>
                                            <a href="#">CC服务</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>推荐学习</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">Java核心</a>
                                        <a href="#">Hadoop</a>
                                        <a href="#">Spark</a>
                                        <a href="#">Python</a>
                                        <a href="#">项目实战</a>
                                        <a href="#">机器学习</a>
                                        <a href="#" style="color:orangered !important">大数据系统化管理优化</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/11.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i10"></i>
                            <a class="txt" href="#">场</a>
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>代码学院</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">Python</a>
                                            <a href="#">C</a>
                                            <a href="#" style="color:orangered !important">C++</a>
                                            <a href="#">Java</a>
                                            <a href="#">JS</a>

                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>热门搜索</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">第一阶段：SEO（搜索引擎优化）</a>
                                            <a href="#">第二阶段：SEM（搜索引擎营销）</a>
                                            <a href="#" style="color:orangered !important">第三阶段：信息流投放</a>
                                            <a href="#">第四阶段：ASO优化</a>
                                            <a href="#">第五阶段：新媒体营销</a>
                                            <a href="#" style="color:orangered !important">第六阶段：电商平台运营</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>技能培养</h6>
                                    <div class="tag">
                                        <a href="#">能够根据企业需求优化/搭建账户，能够根据市场背景合理布局投放计划、能够针对老账户进行优化并提升推广效果、能够高效管理多账户/多渠道的推广计划、能够胜任百万级投放账户的日程管理工作</a>
                                        <!--<a href="#">悦邻家居</a>
                        <a href="#">槿帘坊</a>
                        <a href="#">鸣将</a>
                        <a href="#" style="color:orangered !important">良品LIFE</a>
                        <a href="#">睡眠易</a>
                        <a href="#">凯黎舍</a>
                        <a href="#">风菱家居</a>
                        <a href="#">梦巢</a>
                        <a href="#" style="color:orangered !important">悦邻家居</a>
                        <a href="#">三南</a>-->
                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/12.jpg" width="190" height="260">-->
                                    </a>
                                </div>
                            </div>
                            <i class="icon i11"></i>
                            <a class="txt" href="#">SEO</a>
                            <a class="txt" href="#">SEM</a>
                        </li>
                        <li class="cat-item ">
                            <div class="sub-cat clearfix">
                                <div class="sub-cat-links Left">
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>北美大数据</a>
                                        </li>
                                        <li class="Left sub-content">
                                            <a href="#" style="color:orangered !important">Java核心</a>
                                            <a href="#">Hadoop</a>
                                            <a href="#">Spark</a>
                                            <a href="#">Python</a>
                                            <a href="#">项目实战</a>
                                            <a href="#" style="color:orangered !important">机器学习</a>
                                            <a href="#">大数据系统化管理优化</a>
                                            <a href="#">阿里云平台</a>
                                            <a href="#">就业项目</a>
                                            <a href="#">CC服务</a>

                                        </li>
                                    </ul>
                                    <ul class="sub-group clearfix">
                                        <li class="Left sub-title">
                                            <a href="#"><i class="i-t"></i>教育点</a>
                                        </li>
                                        <li class="Left sub-content last">
                                            <a href="#">北美大数据专家，为你提供前沿技术干货</a>
                                            <a href="#" style="color:orangered !important">科学的课程体系，让你走在行业前沿</a>
                                            <a href="#">全新项目体系，造超一流战斗力</a>
                                            <a href="#">阿里云认证及企业为你就业保驾护航</a>
                                            <a href="#">全方位数学服务，带来超级VIP学习体验</a>
                                            <a href="#">前瞻大数据技术，为你指引方向</a>

                                        </li>
                                    </ul>
                                </div>
                                <div class="sub-cat-brand Left">
                                    <h6>学到的知识</h6>
                                    <div class="tag">
                                        <a href="#" style="color:orangered !important">大数据技能全覆盖，你学的就是一线企业迫切需要的</a>
                                        <a href="#">不断更新的大数据技术点，其中有80%的技术是其他机构没有的，但是却十分重要的</a>

                                    </div>
                                    <!--<a href="#"><img src="/static/statics/images/13.jpg" width="190" height="260"><--></-->
                                </a>
                            </div>
                </div>
                <i class="icon i12"></i>
                <a class="txt" href="#">Spark</a>
                <a class="txt" href="#">CC服务</a>
                </li>
                </ul>
            </div>
            <div id="biaozi">
                <center>
                    <a class="current" href="#" id="biaozizi" style="color: #AECA2D;position: relative;left: 35px;">首页</a>

                    <a href="#" id="biaozizi" style="position: relative;left: 40px;">课工场学院</a>

                    <a href="/static/jsp/daxuejiaocai.jsp" id="biaozizi" style="position: relative;left: 50px;">大学教材</a>

                    <a href="#" id="biaozizi" style="position: relative;left: 60px;">师资力量</a>

                    <a href="#" id="biaozizi" style="position: relative;left: 70px;">高薪就业</a>

                    <a href="#" id="biaozizi" style="position: relative;left: 80px;">在线课程</a>

                    <a href="/static/jsp/pinpaijieshao.jsp" id="biaozizi" style="position: relative;left: 90px;">关于我们</a>

                    <a href="/xilie" id="biaozizi" style="position: relative;left: 80px;">系列</a>
                    <a href="/luntan" id="biaozizi" style="position: relative;left: 80px;">论坛</a>
                </center>
            </div>

        </div>
    </div>
</div>
<!--轮播-->
<div class="scroll-banner" style="background:#227465">
    <ul class="scroll-content">
        <li class="scroll-item" style="background:#131127;display: block;">
            <div class="scroll-index">
                <a href="#">
                    <img class="sc-big fadeInR" src="/static/statics/images/banner01.jpg">
                </a>
                <div class="banner_r">
                    <a href="#">
                        <img src="/static/statics/images/kctixi2.jpg" />
                    </a>
                    <a href="#">
                        <img src="/static/statics/images/kctixi3.jpg" />
                    </a>
                </div>
            </div>
        </li>
        <li class="scroll-item" style="background:#09157B">
            <div class="scroll-index">
                <a href="#">
                    <img class="sc-big fadeInR" src="/static/statics/images/banner02.jpg">
                </a>
                <div class="banner_r">
                    <a href="#">
                        <img src="/static/statics/images/kctixi6.jpg" />
                    </a>
                    <a href="#">
                        <img src="/static/statics/images/kctixi5.jpg" />
                    </a>
                </div>
            </div>
        </li>
        <li class="scroll-item" style="background:#DE2717">
            <div class="scroll-index">
                <a href="#">
                    <img class="sc-big fadeInR" src="/static/statics/images/banner03.jpg">
                </a>
                <div class="banner_r">
                    <a href="#">
                        <img src="/static/statics/images/kctixi4.jpg" />
                    </a>
                    <a href="#">
                        <img src="/static/statics/images/kctixi7.jpg" />
                    </a>
                </div>
            </div>
        </li>

    </ul>
    <div class="scroll-btn">
        <span class="current"></span>
        <span></span>
        <span></span>
    </div>
</div>
<div style="margin-top: 100px"></div>

<!-- footer -->
<div  style="position: absolute;top: 4000px;width:100% ;">
    <div class="wave-box">

        <div class="marquee-box marquee-up" id="marquee-box">
            <div class="marquee">
                <div class="wave-list-box" id="wave-list-box1">
                    <ul>
                        <li><img height="60" alt="波浪" src="/static/statics/images/wave_01.png"></li>
                    </ul>
                </div>
                <div class="wave-list-box" id="wave-list-box2">
                    <ul>
                        <li><img height="60" alt="波浪" src="/static/statics/images/wave_02.png"></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="marquee-box" id="marquee-box3">
            <div class="marquee">
                <div class="wave-list-box" id="wave-list-box4">
                    <ul>
                        <li><img height="60" alt="波浪" src="/static/statics/images/wave_02.png"></li>
                    </ul>
                </div>
                <div class="wave-list-box" id="wave-list-box5">
                    <ul>
                        <li><img height="60" alt="波浪" src="/static/statics/images/wave_01.png"></li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <div class="footer">
        <div class="auto clearfix">

            <!-- footer主要-->
            <div class="five-superiority">
                <ul class="five-superiority-list clearfix">
                    <li class="compensate_ico">
                        <a href="#compensate">
                            <span class="superiority-icon"></span>
                            <span>人工智能学员</span>
                        </a>
                    </li>
                    <li class="retreat_ico">
                        <a href="#refund">
                            <span class="superiority-icon"></span>
                            <span>大数据学院</span>
                        </a>
                    </li>
                    <li class="technology_ico">
                        <a class="superiority-text" href="#afterService">
                            <span class="superiority-icon"></span>
                            <span>区块链学员</span>
                        </a>
                    </li>
                    <li class="prepare_ico">
                        <a href="#ico">
                            <span class="superiority-icon"></span>
                            <span>云计算学院</span>
                        </a>
                    </li>
                    <li class="service_ico">
                        <a href="#secret">
                            <span class="superiority-icon"></span>
                            <span>D学院</span>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="footer-floor1">
                <div class="footer-list">
                    <ul>
                        <li class="flist-title">关于我们</li>
                        <li><a href="#"><strong>课工场简介</strong></a></li>
                        <li><a href="#"><strong>服务条款</strong></a></li>
                        <li><a href="#"><strong>版权声明</strong></a></li>
                        <li><a href="#"><strong>联系我们</strong></a></li>
                        <!--<li><a href="#"><strong>某公司监控</strong></a></li>-->
                    </ul>
                    <ul>
                        <li class="flist-title">产品&服务</li>
                        <li><a href="#">高薪就业</a></li>
                        <li><a href="#">APP下载</a></li>
                        <!--<li><a href="#">移动解决方案</a></li>
                        <li><a href="#">游戏解决方案</a></li>
                        <li><a href="#">网站解决方案</a></li>-->
                    </ul>
                    <ul>
                        <li class="flist-title">优质资源</li>
                        <li><a href="#" target="user/">大咖团队</a></li>
                        <!--<li><a href="http://icp.niaoyun.com/">备案中心</a></li>-->
                        <li><a href="#">在线课程</a></li>
                        <li><a href="">周边商城</a></li>
                        <!--<li><a href="#">IDC公司</a></li>
                        <li><a href="#">帮助中心</a></li>-->
                    </ul>
                    <ul class="flist-4">
                        <li class="flist-title">帮助中心</li>
                        <li><a href="#">新手上路</a></li>
                        <li><a href="#">学习问题</a></li>
                        <li><a href="#">积分规则</a></li>
                        <li><a href="#">K币获取方式</a></li>
                        <!--<li><a href="#">友情链接</a></li>-->
                    </ul>
                    <div class="clear-float"></div>
                </div>
                <div class="footer-right">
                    <div class="telephone" title="服务热线">
                        <span></span>
                        <div class="tel-number">400-0073-888</div>
                    </div>
                    <p style="color: white;position: relative;left: -20px;top: 200px;" id="app">官方APP</p>
                    <p style="color: white;position: relative;left: 180px;top: 180px;">官方微信</p>
                    <div class="official-plat">
                        <p style="position: relative;left: 130px;top: -20px;" class="weixin" style="background-image: ">

                            <img src="/static/statics/images/weixin.png"/>
                            <img style="position: relative;left: -200px;top: -155px;" src="/static/statics/images/app.png"/>


                    </div>
                </div>

            </div>
        </div>

    </div>
    <!-- footer end -->

    <div style=";"></div>

    <!--右侧悬浮菜单-->
    <div class="slide">
        <ul class="icon">
            <a href="#logo"><li class="up" title="上一页"></li></a>
            <li class="qq"></li>
            <li class="tel"></li>
            <li class="wx"></li>
            <a href="#app"><li class="down" title="下一页"></li></a>
        </ul>
        <ul class="info">
            <li class="qq">
                <p>在线沟通，请点我<a href="http://wpa.qq.com/msgrd?v=3&uin=2639487822&site=qq&menu=yes" target="_blank">在线咨询</a></p>
            </li>
            <li class="tel">
                <p>咨询热线：<br>400-0073-888<br>客服qq：<br>18201429936</p>
            </li>
            <li class="wx">
                <div class="img"><img src="/static/statics/images/weixin.png" /></div>
            </li>
        </ul>
    </div>
    <div id="btn" class="index_cy"></div>
    <script type="text/javascript">
        $(function(){

            $('.slide .icon li').not('.up,.down').mouseenter(function(){
                $('.slide .info').addClass('hover');
                $('.slide .info li').hide();
                $('.slide .info li.'+$(this).attr('class')).show();//.slide .info li.qq
            });
            $('.slide').mouseleave(function(){
                $('.slide .info').removeClass('hover');
            });

            $('#btn').click(function(){
                $('.slide').toggle();
                if($(this).hasClass('index_cy')){
                    $(this).removeClass('index_cy');
                    $(this).addClass('index_cy2');
                }else{
                    $(this).removeClass('index_cy2');
                    $(this).addClass('index_cy');
                }

            });

        });
    </script>



    <p></p>
    <p></p>
</div>
</div>




<script src="https://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script src="/static/statics/js/jquery.SuperSlide.2.1.3.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    //左侧分类导航
    $('.category-option .cat-item').hover(function() {
        $(this).toggleClass('hover')
    })
    //图片轮播
    jQuery(".scroll-banner").slide({
        mainCell: ".scroll-content",
        titCell: ".scroll-btn span",
        titOnClassName: "current",
        effect: "fold",
        autoPlay: true,
        delayTime: 1000,
        interTime: 3500
    });
</script>

</body>

</html>
