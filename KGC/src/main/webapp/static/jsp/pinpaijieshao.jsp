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
    <title>品牌介绍 - 课工场</title>
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/floor.js"></script>
    <link rel="stylesheet" href="/static/css/styleshuzizengzhang.css" type="text/css">
    <script type="text/javascript" src="/static/js/jquery.js"></script>
    <script type="text/javascript" src="/static/js/timepeople.js"></script>
    <style type="text/css">
        .biaozi {
            color: white;
            text-decoration: none;
            font-size: 17px;
            margin-left: 80px;
        }

        #biaozizong {
            font-size: 17px;
            font-weight: 300px;
            position: relative;
            top: -30px;
            margin-left: 400px;
        }

        .biaozi:hover {
            color: #41B863;
        }

        body {
            background: #F5F5F5;
        }

        body,
        ul,
        li,
        dl,
        ol {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        i {
            font-style: normal;
        }

        .fixedmeau {
            border: 1px solid #ececec;
            width: 30px;
            position: fixed;
            top: 150px;
            left: 50px;
            display: none;
            background: #fff
        }

        .fixedmeau li {
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            cursor: pointer;
        }

        .fixedmeau li+li {
            border-top: 1px solid #ececec;
        }

        .fixedmeau span {
            display: none;
        }

        .fixedmeau .active {
            background: white;
            color: darkred;
            font-weight: 700
        }

        .fixedmeau li:hover span {
            display: block;
            font-size: 12px;
            background: darkred;
            color: white;
        }

        .fixedmeau li:hover i {
            display: none;
        }

        .totop {
            width: 40px;
            height: 40px;
            text-align: center;
            background: darkred;
            position: fixed;
            bottom: 30px;
            right: 30px;
            cursor: pointer;
            border-radius: 5px;
            display: none;
            color: #fff;
        }

        .totop>span {
            display: block;
            line-height: 15px;
            font-size: 12px;
            color: #fff;
        }

        .header_box {
            width: 100%;
            height: 160px;
            text-align: center;
            margin: 0 auto;
        }

        .header_box>.header {
            line-height: 120px;
            font-size: 64px;
            color: #4b4b4b;
            background: #fff;
        }

        .header_box>.meau {
            background: darkred;
            height: 40px;
            line-height: 40px;
            color: #fff
        }

        .louceng {
            height: 800px;
            padding: 0 15px 15px 15px;
            box-sizing: border-box;
            width: 1200px;
            text-align: center;
            margin: 0 auto;
            border: 1px solid #ECECEC;
            background: #fff
        }

        .louceng>.title {
            width: 100%;
            height: 50px;
            font-size: 18px;
            line-height: 50px;
            text-align: left;
            font-weight: 700;
            color: #333;
        }

        .louceng>.title>span {
            margin-left: 5px;
            font-weight: normal
        }

        .louceng>.con {
            width: 100%;
            height: 735px;
            background: #F1F1F1;
            font-size: 64px;
            line-height: 735px;
            color: #333333
        }
    </style>
</head>

<body>
<script src="/demos/googlegg.js"></script>
<!--导航栏-->
<div id="daohanglan" style="width: 100%;background:rgba(0,0,0,0.7);height: 70px;">
    <img src="/static/images/logo.png" style="margin-top: 15px;margin-left: 180px;" />
    <div id="biaozizong">
        <a id="liu" class="#jianjie" href="#jianjie" style="color: #41B863;text-decoration: none;">课工场简介</a>
        <a class="biaozi" href="#guanyu">关于课工场</a>
        <a class="biaozi" href="#kgclogo">课工场</a>
        <a class="biaozi" href="#chaungshiren">创始人简介</a>
        <a class="biaozi" href="#linian">企业理念</a>
        <a class="biaozi" href="#youhshi">企业优势</a>
        <a class="biaozi" href="#rongyu">企业荣誉</a>
    </div>
    <!--<div id="jianjiexiang" style="width: 170px;height: 100px;background:rgba(0,0,0,0.7);position: absolute;top: 78px;left: 510px;">
        <center>
            <a href="#" class="biaozi" style="position: relative;left: 40px;top:10px;">关于课工场</a>
            <br />
            <br />
            <a href="#" class="biaozi" style="position: relative;left: 40px;top: 10px;">课工场logo</a>
    </div>-->
    </center>
</div>
<!--导航栏底----------------------------------------------------------------------------------------------------------------------------------->

<!--楼层框架-->
<!--右侧固定导航-->
<ul class="fixedmeau">
    <li class="active"><i>1F</i><span>关于</span></li>
    <li><i>2F</i><span>简介</span></li>
    <li><i>3F</i><span>logo</span></li>
    <li><i>4F</i><span>创始</span></li>
    <li><i>5F</i><span>理念</span></li>
    <li><i>6F</i><span>优势</span></li>
    <li><i>7F</i><span>荣誉</span></li>

</ul>
<!--返回顶部-->
<div class="totop"><span>▲</span>Top</div>
<!--头部-->

<!--模块-->
<div class="louceng_box">
    <div class="louceng">
        <div class="title">1.关于课工场 </div>
        <div class="con">
            <img id="guanyu" src="/static/images/15.jpg" width="100%" height="100%" />
            <div style="width: 900px;position: absolute;left: 300px;top: 210px;height: 800px;">
                <a style="font-size: 24px;position: absolute;top: -350px;left: 390px;color: #333333;">关于课工场</a>
                <a style="font-size: 17px;position: absolute;top: -300px;left: 30px;color: #C7C7C8;">
                    北京课工场教育科技有限公司是北京大学优秀校办企业，是北大青鸟旗下大学生高端教育品牌，专注于企业 IT 岗位
                    <a style="font-size: 17px;color: #C7C7C8;position: absolute;top: -275px;">专业人才培养,成立于 2015 年，注册资本 1000 万</a>
                </a>

                <a style="font-size: 17px;color: #C7C7C8;position: absolute;top: -245px;left: 20px;">紧跟技术发展潮流，课工场针对企业最新的岗位技术需求，邀请北京大学教授、北美大数据专家、行业一线专家参与
                    <a style="font-size: 17px;color: #C7C7C8;position: absolute;top: -220px;">技术方向把控、课程研发及教学实施，研发出可以让大学生快速、高效掌握的教学课程体系；通过智慧教材、人工智能
                        <a style="font-size: 17px;color: #C7C7C8;position: absolute;top: -195px;">学习平台，为学员提供更好的学习体验以达成更好的学习效果；同时，还为学员提供了全面的就业服务体系，配备了完
                            <a style="font-size: 17px;color: #C7C7C8;position: absolute;top: -170px;">善的就业保障。此外，为积极响应国家关于产教融合的政策，课工场加入“协同育人”项目并与全国高校在新工科建
                                <a style="font-size: 17px;color: #C7C7C8;position: absolute;top: -145px;">设、师资培训、专业共建及实践基地等方面进行深入合作。
                                </a>
                            </a>
                        </a>
                    </a>
                </a>

                <a style="font-size: 17px;color: #C7C7C8;position: relative;top: -140px;left: 20px;">
                    截止 2018 年，课工场筛选北大青鸟体系内致力于大学生市场的实力雄厚的校区，在全国 30 余座城市建设课工场校<br />
                    <a style="font-size: 17px;color: #C7C7C8;position: relative;top: -870px;left: -100px;"> 区68 所，合作院校达 436 所，	线下学员已经超过 10 万人，线上学员超过 150 万人。
                    </a>
                </a>
            </div>
            <!--真实数据开始-->
            <div class="time" style="position: absolute;top: 170px;">
                <div class="time_content">

                    <div class="time_right">
                        <div class="wrapper" id="dt">

                            <div class="wrapper1" style="font-size: 25px;">

                                <div class="timex" style="color:  #7D7D7D;position: absolute;left: 220px;top: 70px;">课工场校区</div>
                                <div class="counter col_fourth time1">
                                    <h2 class="timer count-title" data-to="68" data-speed="2000" style="color: #42CC6A;">68</h2>
                                </div>
                                <div class="timey" style="color: #7D7D7D;position: absolute;left: 220px;top: 140px;">所</div>
                            </div>

                            <div class="wrapper2" style="font-size: 25px;">

                                <div class="timex" style="color: #7D7D7D;position: absolute;left: 520px;top: 70px;">合作院校</div>
                                <div class="counter col_fourth time2">
                                    <h2 class="timer count-title" data-to="436" data-speed="2000" style="color: #42CC6A;">436</h2>
                                </div>
                                <div class="timey" style="color: #7D7D7D;position: absolute;left: 500px;top: 140px;">所</div>
                            </div>

                            <div class="wrapper3" style="font-size: 25px;">

                                <div class="timex" style="color: #7D7D7D;position: absolute;left: 800px;top: 70px;">学员已超过</div>
                                <div class="counter col_fourth time3">
                                    <h2 class="timer count-title" data-to="1500000" data-speed="2000" style="color: #42CC6A;position: relative;left: 80px;">1500000</h2>
                                </div>
                                <div class="timey" style="color: #7D7D7D;position: absolute;left: 860px;top: 140px;">人</div>
                            </div>
                        </div>

                        <script type="text/javascript">
                            $('.timer').each(count)
                            $('.timer').each(count1);
                        </script>

                    </div>
                </div>
            </div>
            <!--真实数据结束-->

        </div>
    </div>
    <div class="louceng">
        <div class="title">2.课工场简介 <span></span></div>
        <div class="con">
            <img id="jianjie" src="/static/images/01.jpg" width="100%" height="100%" />

            <div style="font-size: 15px;position: absolute;top: 150px;">
                <a style="position: relative;top: 880px;left: 265px;">中国人保承保</a>
                <a style="position: relative;top: 910px;left: 170px;">北美大咖加持</a>
                <a style="position: relative;top: 850px;left: 75px;">总监讲师授课</a>

                <a style="position: relative;top: 880px;left: 105px;">智慧教材辅助</a>
                <a style="position: relative;top: 910px;left: 10px;">权威证书认证</a>
                <a style="position: relative;top: 850px;left: -85px;">名企高校联合</a>
            </div>

        </div>
    </div>
    <div class="louceng">
        <div class="title">3.课工场logo </div>
        <div class="con"  style="background-color: white;">
            <a style="position: absolute;top:1440px;font-size: 45px;left: 600px;">课工场Logo</a>
            <img id="kgclogo" src="/static/images/03.png" width="1000px" height="400px" style="position: relative;top: 120px;"/>
            <a style="position: absolute;top:1900px;font-size: 45px;left: 250px;font-size: 17px;color: #9C9C9E;" >
                课工场的Logo主色调为绿色，由“C”与WiFi标志组成，“C”有三层含义，分别是“Course（课程）”、“Change（改变）”、
                <a style="position: absolute;top:1940px;font-size: 45px;left: 180px;font-size: 17px;color: #9C9C9E;">“Cool（酷）”，绿色代表青春活力，在移动互联网时代，我们及时掌握 IT 应用产业发展需求，将其转化为具有前瞻性、可靠的课程，为更多年轻人赋能。
                </a>
            </a>
        </div>
    </div>
    <div class="louceng">
        <div class="title">4.创始人简介 </div>
        <div class="con">
            <img id="chaungshiren" src="/static/images/04.jpg" width="100%" height="100%"/>
            <a style="color: white;font-size: 28px;position: absolute;top: 2370px;left: 430px;">肖睿</a>
            <a style="color: white;font-size: 12px;position: absolute;top: 2420px;left: 400px;">课工场创始人、总经理</a>
            <a style="color: white;font-size: 12px;position: absolute;top: 2450px;left: 400px;">北京大学教育学博士</a>
            <a style="color: white;font-size: 12px;position: absolute;top: 2480px;left: 400px;">北大青鸟Aptech联合创始人</a>
            <a style="color: white;font-size: 12px;position: absolute;top: 2510px;left: 400px;">北大青鸟Aptech副总裁</a>
            <a style="color: white;font-size: 12px;position: absolute;top: 2540px;left: 400px;">北大青鸟研究院院长</a>

            <a style="color: white;font-size: 13px;position: absolute;top: 2419px;left: 800px;">毕业于吉林大学少年班，专攻人工智能方向，国内首批PMP( 项目</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2449px;left: 800px;">管理专家 )，劳动部和教育部行业岗位标准评审专家。1995年加入</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2479px;left: 800px;">北大方正研究院，领导北大方正部分核心产品研发。1999年共同</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2509px;left: 800px;">创立北大青鸟Aptech，历任学术总监，研究院院长，公司副总裁</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2539px;left: 800px;">等核心岗位。作为国内顶尖软件技术专家，2004年7月赴加拿大</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2569px;left: 800px;">EMC公司负责惠普项目，2005年受聘为北京大学软件学院特约讲</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2609px;left: 800px;">师。2015年创立课工场，专注中国大学生IT就业教育服务。2017</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2639px;left: 800px;">年受聘为北京大学学习科学实验室特约顾问。长达20年IT教育产</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2669px;left: 800px;">品管理和企业管理的经验让肖睿先生获得“互联网+教育风云人</a>
            <a style="color: white;font-size: 13px;position: absolute;top: 2699px;left: 800px;">物”殊荣。</a>
        </div>
    </div>
    <div class="louceng">
        <div class="title">5.企业理念 </div>
        <a style="font-size: 42px;color: #535356;">企业理念</a>
        <div class="con" style="background-color: white;">
            <img id="linian" src="/static/images/05.png"  width="100%" style="position: relative;top: -50px;"/>
            <a style="color: #656568;font-size: 20px;position: absolute;top: 3400px;left: 270px;">愿景</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3430px;left: 230px;">成为开拓创新和对</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3460px;left: 230px;">社会负责任的教育</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3490px;left: 230px;">机构</a>

            <a style="color: #656568;font-size: 20px;position: absolute;top: 3290px;left: 580px;">使命</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3320px;left: 540px;">提供更个性更有效</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3350px;left: 540px;">的IT学习服务，</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3380px;left: 540px;">打造可以改变中国</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3410px;left: 540px;">未来的IT人才</a>

            <a style="color: #656568;font-size: 20px;position: absolute;top: 3390px;left: 880px;">品牌精神</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3420px;left: 850px;">做更喜欢自己的人</a>

            <a style="color: #656568;font-size: 20px;position: absolute;top: 3280px;left: 1190px;">品牌价值</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3310px;left: 1160px;">师心北大，践行北</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3340px;left: 1160px;">大精神，坚持教育</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3370px;left: 1160px;">初心；一线行业技</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3400px;left: 1160px;">术大咖，奢侈教育</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3430px;left: 1160px;">资源；智慧教材，</a>
            <a style="color: #656568;font-size: 17px;position: absolute;top: 3460px;left: 1160px;">自适应学习平台</a>
        </div>
    </div>
    <div class="louceng">
        <div class="title">6.企业优势 </div>
        <div class="con">
            <img id="youhshi" src="/static/images/13.jpg" width="100%" height="100%">
        </div>
    </div>
    <div class="louceng">
        <div class="title">7.企业荣誉 </div>
        <div class="con" style="background-color: white;">
            <a style="font-size: 42px;position: absolute;top: 4600px;left: 700px;">企业荣誉</a>
            <img id="rongyu" src="/static/images/14.jpg"  width="70%" height="70%" style="position: relative;top: 200px;left: 150px;"/>
            <a style="color: #3B3B3F;font-size: 19px;position: absolute;top: 4680px;left: 250px;">2018年度</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4710px;left: 250px;">决胜网《2018年度教育行业优质职业教育品牌》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4740px;left: 250px;">中国网《2018年度科技创新影响力品牌》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4770px;left: 250px;">腾讯网《2018年度知名在线教育品牌》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4800px;left: 250px;">腾讯网《2018年度社会信赖职业教育品牌》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4830px;left: 250px;">新浪网《2018年度品牌实力教育机构》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4860px;left: 250px;">中国保护消费者基金会《2018质量放心用户满意双优品牌》</a>

            <a style="color: #3B3B3F;font-size: 19px;position: absolute;top: 4910px;left: 250px;">2017年度</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4940px;left: 250px;">中国网《2017年综合实力突出教育集团》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 4970px;left: 250px;">网易《2017年度品牌影响力教育机构》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 5000px;left: 250px;">新浪网《2017 中国品牌影响力教育机构》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 5030px;left: 250px;">腾讯网《2017年度影响力教育品牌》</a>

            <a style="color: #3B3B3F;font-size: 19px;position: absolute;top: 5090;left: 250px;position: relative;top: 20px;left: -888px;">2016年度</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 5130px;left: 250px;">腾讯网《2016年度影响力教育品牌》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 5160px;left: 250px;">网易《2016年度最受用户信赖教育机构》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 5190px;left: 250px;">新浪网《2016中国影响力科技创新教育机构》</a>
            <a style="color: #3B3B3F;font-size: 15px;position: absolute;top: 5220px;left: 250px;">小米《2016教育行业突出贡献奖》</a>
        </div>
    </div>

</div>
<!--楼层栏底----------------------------------------------------------------------------------------------------------------------------------->

<script type="text/javascript">
    $("#jianjiexiang").hide();
    $("#liu").click(function() {
        $("#jianjiexiang").show();
    }, function() {
        $("#jianjiexiang").hide();
    })
</script>
<!--楼层框架JavaScript-->
<script type="text/javascript">
    /*
                     totop  //返回顶部按钮
                     fixedevery   // 左侧固定导航的每一项
                     louceng  //模块的每一项
                     header   //头部
                     */
    $(function() {
        var obj = new floor('.totop', '.fixedmeau>li', '.louceng_box>.louceng', '.header_box');
        obj.init()
    })
</script>

</body>

</html>