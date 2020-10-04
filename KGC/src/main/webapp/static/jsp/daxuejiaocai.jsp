<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>智慧教材-课工场</title>
    <script src="js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="/static/css/zhihuijiaocai.css" />
    <link rel="stylesheet" type="text/css" href="/static/staticszhihui/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/static/css/css.css">
    <script src="/static/js/zhihuijiaocai.js" type="text/javascript" charset="utf-8"></script>

</head>

<body>
<!--导航栏-->
<div>
    <!--logo-->
    <img src="/static/img/zhihuilogo.png" id="daohanglogo" />
    <!--9li-->
    <a class="lia" href="#">直播</a>
    <a class="lia" href="#">系列</a>
    <a class="lia" href="#">岗位</a>
    <a class="lia" href="#">实战</a>
    <a class="lia" href="#">题库</a>
    <a class="lia" href="#">社区</a>
    <a class="lia" href="#">教材</a>
    <a class="lia" href="#">阿里云</a>
    <a class="lia" href="#">社区</a>
    <!--搜索框-->
    <input type="text" placeholder="搜索" id="sousuokuang" />
    <!--app下载 登录|注册-->
    <div id="sia">
        <c:if test="${sessionScope.username==null}">
            <a href="#" class="siaa" style="position:relative;left:-20px ;">登陆&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;注册</a>
        </c:if>
        <c:if test="${sessionScope.username!=null}">
            <a href="#" id="appa" style=" color: #9FC005;text-decoration: none;position:relative; left: 30px">APP下载</a>
            <c:if test="${sessionScope.usertype==1}">
                <a href="#" class="siaa" style="position:relative;left:50px ;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.username}同学</a>
            </c:if>
            <c:if test="${sessionScope.usertype==2}">
                <a href="#" class="siaa" style="position:relative;left:50px ;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.username}老师</a>
            </c:if>
            <c:if test="${sessionScope.usertype==3}">
                <a href="#" class="siaa" style="position:relative;left:50px ;">欢迎&nbsp;&nbsp;&nbsp;${sessionScope.username}管理员</a>
            </c:if>
        </c:if>
    </div>
    <img src="/static/img/zhihuierweima.jpg" id="apperweima" style="float: right;position: absolute;top: 50px;left: 1180px;" />
</div>

<!--智慧教材图片-->
<div>
    <img src="/static/img/zhihuibeijing.jpg" width="100%" height="210px" style="position: relative;margin-left: -10px;margin-top: 10px;"/>
    <a id="zhihuijiaocaizi">智慧教材</a>
    <input type="button" id="jiaoshizhuanqu" />
    <img src="/static/img/jiaoshizhuanqu.png"  width="40px" height="40px" id="jiaoshizhuanqulogo"/>
    <a id="jiaoshizhuanquzi">教师专区</a>
</div>


<div style="background-color: #F0F0F0;margin-top: -5px;width: 100%;height: 180px;">
    <!--教材下载-->
    <a style="color: #484848;font-size: 22px;position: absolute;left: 170px;top: 350px;">教材下载</a>
    <br />
    <!--书的六大类-->
    <ul id="shuliudalei">
        <a href="#" class="shuliudaleizi">全部</a>
        <a href="#chuangyisheji" class="shuliudaleizi">创意设计</a>
        <a href="#wangluoyingxiao"  class="shuliudaleizi">网络营销</a>
        <a href="#qianduan" class="shuliudaleizi">前段</a>
        <a href="#dashuju" class="shuliudaleizi">大数据</a>
        <a href="#yunjisaun" class="shuliudaleizi">云计算</a>
    </ul>
</div>

<div id="shujitupian" <!-- height: 2500px;"-->>
<!--图片视图 1-->
<!-------------------------------------------------------------------------------------------------------------------------------------------------->
<div class="main">
    <a style="font-size: 22px;" id="chuangyisheji">创意设计</a>
    <div class="dy-content">
        <div class="dy-videos">
            <ul class="dy-video-list">
                <a href="denglu.html">
                    <li data- class="dy-video-item dy-video-meta-right">
                        <div class="dy-video-meta">
                            <div class="dy-video-meta-bg"> </div>
                            <div class="dy-video-meta-dy">
                                <h4 class="dy-video-title"> <a href="denglu.html"> UI设计师成长第一步 </a> </h4>
                                <span class="dy-video-rating">7.3</span>
                                <ul class="dy-video-meta-list">

                                </ul>
                                <p class="dy-video-intro"> 本书采用案例驱动的方式，让读者掌握不同风格的图标以及iOS与Android两大主流手机操作系统的界面设计规范和设计手法，并能够按照企业需求制作完整的移动App。 <a class="dy-video-intro-more">更多</a> </p>
                            </div>
                            <div class="dy-video-meta-bg"> </div>
                        </div>
                        <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi1.png" alt="移动UI界面设计"> <span class="dy-video-nocomplete"></span>  <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                        <div class="dy-video-primary">
                            <h4 class="dy-video-title"><a href="kechenglunbo.html"> 移动UI界面设计 </a> </h4>
                            <span class="dy-video-rating"> 7.3 </span> </div>
                    </li>
                </a>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> UI设计师成长第一步 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社</li>

                                <p class="dy-video-intro"> 本书以真实的移动端商业应用项目为实训任务，从业务需求分析、移动端UI/UE设计流程、效果图设计、设计图标注到切片全面剖析，展现企业实际的移动端UI设计开发流程、真实业务和设计技巧，训练移动端UI设计的能力。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi2.png" alt="UI设计师成长第一步"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 移动UI商业项目设计实战 </a> </h4>
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> UI设计师成长第一步  </a> </h4>
                            <span class="dy-video-rating">6.6</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社 </li>
                            </ul>
                            <p class="dy-video-intro"> 本书以互联网发展趋势作为背景，以当前视觉设计潮流作为导向，选取了房地产、电子数码、教育、游戏、电商、社交等领域的商业案例，详细讲解了不同类型Web端UI商业项目的设计思路、设计理论以及实际案例制作过程。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi3.png" alt="捉妖记2"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 网页UI商业项目设计实战  </a> </h4>
                        <span class="dy-video-rating"> 6.6 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> UI设计师成长第一步 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本教材针对零基础的人群，全面系统地介绍Adobe公司出品的经典设计软件——Photoshop，详细介绍了各种图片的处理工具，以及图标、按钮、Logo、特效字的设计方法和技巧，最后带领你进行独立的创意设计，完成商业海报、游戏网站的设计，为从事设计工作打下良好功底。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi4.png" alt="Photoshop入门到创意"> <span class="dy-video-complete"></span> <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Photoshop入门到创意  </a> </h4>
                        <!-- <div class="dy-video-intro"> 死侍是一个亦正亦邪的角色。 </div>-->
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> UI设计师成长第一步 </a> </h4>
                            <span class="dy-video-rating">5.2</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                            </ul>
                            <p class="dy-video-intro"> 本书针对零基础的小白人群，采用案例或任务驱动的方式，由入门到精通全面系统地介绍Adobe Illustrator，介绍了绘制工具，训练目前流行的各类海报、Logo、包装、网站广告、DM、VI等设计的方法和技巧，并带领大家进行独立的创意设计并完成项目。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi5.png" alt="UI设计师成长第一步"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Illustrator入门及商业广告设计 </a> </h4>
                        <span class="dy-video-rating"> 5.2 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-item-last dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 让人爱不释手的移动端UI设计 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本教材针对具有Photoshop基础的人群，以真实的移动端商业应用项目为实训任务，从业务需求分析、移动端UI/UE设计流程、效果图设计、设计图标注到切片全面剖析、展现企业实际的移动端UI设计开发流程、真实业务和设计技巧，训练移动端UI设计的三大能力。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi6.png" alt="让人爱不释手的移动端UI设计"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 移动端UI商业项目实战 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 令人惊叫的网页是这样炼成的 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书针对具有Photoshop基础的人群，以真实的Web端网站商业项目为实训任务，从业务需求分析、UI设计流程、效果图设计、设计图切片全面剖析、展现企业实际的UI设计开发流程、真实业务和设计技巧，训练UI设计师在设计互联网主流商业网站和网络营销及推广的能力。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi7.png" alt="令人惊叫的网页是这样炼成的"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 网站UI商业项目实战  </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 好网站，要出“彩”！ </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书针对具有Ps基础的人群，采用案例或任务驱动的方式，详细介绍了从事Web端网站UI设计需要掌握的网页配色基础、色彩搭配，常用的网页布局方法，最后尝试进行独立的创意设计，完成综合应用项目——购物网站、游戏网站，为从事Web端设计工作打下良好的功底。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi8.png" alt="好网站，要出“彩”！"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 网站配色与布局  </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 不懂交互的设计师不是好设计师！  </a> </h4>
                            <span class="dy-video-rating">5.2</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书结合“互联网+”时代的独特性，针对“0基础”人群，采用案例或项目任务驱动的形式，系统地介绍互联网产品的设计开发流程、产品需求分析、竞品分析的方法和技巧、用户体验和交互设计的理论与实操、Axure工具技巧等，理论和上机相结合最终完成项目交互原型设计。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi9.png" alt="不懂交互的设计师不是好设计师！"> <span class="dy-video-complete"></span> <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 用户体验及Axure交互设计 </a> </h4>
                        <span class="dy-video-rating"> 5.2 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 分分钟搞定APP UI设计 </a> </h4>
                            <span class="dy-video-rating">5.9</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书针对具有Photoshop基础的人群，详细介绍移动端UI设计的流程、Android与iOS端的设计规范、扁平化/拟物化等各种风格的图标设计、购物/天气/教育类APP的界面设计，带领大家进行创意设计并完成休闲娱乐类App项目，为大家从事移动端设计工作打下良好的设计功底。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi10.png" alt="分分钟搞定APP UI设计命"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 移动端UI设计及规范 </a> </h4>
                        <span class="dy-video-rating"> 5.9 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> UI设计师与开发人员合作秘籍 </a> </h4>
                            <span class="dy-video-rating">5.9</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                            </ul>
                            <p class="dy-video-intro"> 作为UI/UE设计师，经常和Web前端开发人员“吵架”：开发人员抱怨设计得过于复杂无法实现，UI设计师则吐槽开发的产品和最初设计效果相差甚远。UI设计师和开发人员究竟如何合作和沟通？本书借鉴一位资深Web前端开发的经验总结，详细介绍了双方合作必备的技术和技巧。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/chuangyi11.png" alt="UI设计师与开发人员合作秘籍 "> <span class="dy-video-nocomplete"></span>  <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Html5+CSS3前端技术  </a> </h4>
                        <span class="dy-video-rating"> 5.9 </span> </div>
                </li>
                <!-- <li data- class="dy-video-item dy-video-item-last dy-video-meta-left">
                   <div class="dy-video-meta">
                     <div class="dy-video-meta-bg"> </div>
                     <div class="dy-video-meta-dy">
                       <h4 class="dy-video-title"> <a> 快把我哥带走 </a> </h4>
                       <span class="dy-video-rating">7.3</span>
                       <ul class="dy-video-meta-list">
                         <li class="dy-video-actors"> <span class="dy-video-tip"> 主演: </span> <a>张子枫</a> <a> 彭昱畅</a> </li>
                         <li class="dy-video-types"> <span class="dy-video-tip">类型:</span> <span class="dy-video-meta-filter">喜剧</span> <span class="dy-video-meta-filter">奇幻</span> </li>
                         <li class="dy-video-areas"> <span class="dy-split">|</span> <span class="dy-video-tip">地区:</span> <span class="dy-video-meta-filter">内地</span> </li>
                         <li class="dy-video-starts"> <span class="dy-split">|</span> <span class="dy-video-tip">年代:</span> <span class="dy-video-meta-filter">2018</span> </li>
                       </ul>
                       <p class="dy-video-intro"> 拥有一个每天耍贱整蛊妹妹、毫无家庭感的哥哥是一种什么感受？油炸还是蒸锅？时秒只希望哥哥时分彻底消失！连珍贵的生日愿... <a class="dy-video-intro-more">更多</a> </p>
                     </div>
                     <div class="dy-video-meta-bg"> </div>
                   </div>
                   <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/12.jpg" alt="快把我哥带走"> <span class="dy-video-nocomplete"></span> <span class="dy-video-date"> 2018 年 </span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                   <div class="dy-video-primary">
                     <h4 class="dy-video-title"><a> 快把我哥带走 </a> </h4>
                     <span class="dy-video-rating"> 7.3 </span> </div>
                 </li>-->
            </ul>
        </div>
    </div>
</div>

<br />
<!--------------------------------------------------------------------------------------------------------------------------------------------------------------->
<!--网络营销-->
<div class="main" style="margin-top: -50px;">
    <a style="font-size: 22px;" id="wangluoyingxiao">微信公众号运营解析</a>
    <div class="dy-content">
        <div class="dy-videos">
            <ul class="dy-video-list">
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 水利水电出版社 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">

                            </ul>
                            <p class="dy-video-intro"> 本书针对微信公众号的运营技巧，以及行业中的企业成功案例进行了深度的解析。从基础的认识微信公众平台、企业微信公众号的规划、公众平台的基本操作，到高级的推广吸粉及用户管理、订阅号及服务号的运营、公众号发布内容的规划、运营技巧、营销常用工具、数据分析及效果量化，并且采用逆向思维进行研发，帮助读者提升从业能力。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yingxiao1.png" alt="微信公众号运营解析"> <span class="dy-video-nocomplete"></span>  <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 微信公众号运营解析 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 店铺流量快速增长秘笈 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社</li>

                                <p class="dy-video-intro"> 本书重点介绍淘宝当下最热门的付费推广工具淘宝客、淘宝达人、直通车和钻展，内容由入门到精通，从淘宝客推广到淘宝达人，从直通车入门、推广设置到直通车选词选款策略、推广优化技巧，从钻展基础设置到创意营销、定向营销以及出价策略，由浅及深的介绍了四个付费推广工具的热门玩法。在介绍玩法的同时增加了大量成功案例，使读者能够更加深入...<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yingxiao2.png" alt="SEO网站权重深度解析"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 淘宝付费推广实战  </a> </h4>
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 数据的力量助推搜索引擎营销  </a> </h4>
                            <span class="dy-video-rating">6.6</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社 </li>
                            </ul>
                            <p class="dy-video-intro"> 本书是从数据分析的角度，层层深入，诠释SEM推广的流程与运营策略，并涵盖电商类、教育类、医疗类等十余个真实实操案例，另外配以完善的学习资源和支持服务，包括视频教程、案例素材下载、学习交流社区、学习APP等终身学习内容，为学习者带来全方位的学习体验。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yingxiao3.png" alt="捉妖记2"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 深入浅出SEM数据分析  </a> </h4>
                        <span class="dy-video-rating"> 6.6 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> UI设计师成长第一步  </a> </h4>
                            <span class="dy-video-rating">6.6</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社 </li>
                            </ul>
                            <p class="dy-video-intro"> 本书以互联网发展趋势作为背景，以当前视觉设计潮流作为导向，选取了房地产、电子数码、教育、游戏、电商、社交等领域的商业案例，详细讲解了不同类型Web端UI商业项目的设计思路、设计理论以及实际案例制作过程。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yingxiao4.png" alt="捉妖记2"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 网页UI商业项目设计实战  </a> </h4>
                        <span class="dy-video-rating"> 7.6 </span> </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<br />
<!---------------------------------------------------------------------------------------------------------------------------------------------------------------->
<!--前端-->
<div class="main" style="margin-top: -240px;">
    <a style="font-size: 22px;" id="qianduan">前端</a>
    <div class="dy-content">
        <div class="dy-videos">
            <ul class="dy-video-list">
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Bootstrap与移动应用开发 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社</li>
                            </ul>
                            <p class="dy-video-intro"> 本书讲解使用HTML5和CSS3开发网页版的移动应用与使用Bootstrap进行响应式页面开发，解决平板电脑或智能手机访问网站的问题，并通过大量的项目案例，配以完善的学习资源和支持服务。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan1.png" alt="Bootstrap与移动应用开发"> <span class="dy-video-nocomplete"></span>  <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Bootstrap与移动应用开发 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> JavaScript+jQuery开发实战 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社</li>

                                <p class="dy-video-intro"> 本书紧密围绕互联网行业发展对网站开发技术与能力要求编写，介绍如何使用JavaScript、jQuery 编写网页特效，最终制作出界面美观大方、具备动态效果、面向企业应用的商业级网站。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan2.png" alt="JavaScript+jQuery开发实战"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> JavaScript+jQuery开发实战 </a> </h4>
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> HTML5+CSS3开发实战  </a> </h4>
                            <span class="dy-video-rating">6.6</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社 </li>
                            </ul>
                            <p class="dy-video-intro"> 本书使用HTML5和CSS3进行网站设计开发，增加了游戏元素项目案例，并配以完善的学习资源和支持服务。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan3.png" alt=" HTML5+CSS3开发实战"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> HTML5+CSS3开发实战  </a> </h4>
                        <span class="dy-video-rating"> 6.6 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 网页制作实战 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 随着信息时代的到来，网络已完全融入我们的工作和生活，从网络上获取信息或通过网络交换信息，这些都离不开网络的承载者——网页。一个优秀的网站设计，能够使浏览者快速地找到所需内容，并且拥有愉快的网络体验。本教材通过基本的HTML标签学习，加之CSS美化技术来开发网站，让你进入多姿多彩的网络世界。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan4.png" alt="网页制作实战"> <span class="dy-video-complete"></span> <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 网页制作实战  </a> </h4>
                        <!-- <div class="dy-video-intro"> 死侍是一个亦正亦邪的角色。 </div>-->
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> HTML5应用开发与实战 </a> </h4>
                            <span class="dy-video-rating">5.2</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                            </ul>
                            <p class="dy-video-intro"> 随着各类网络技术的飞速发展，各种前端开发技术更是百花齐放、百家争鸣，如何设计开发出更加优秀的网页、如何更能提高用户的体验已经成为前端开发工程师的追求目标。HTML5+CSS3技术就是为了满足这样的目标而诞生的。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan5.png" alt="HTML5应用开发与实战"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> HTML5应用开发与实战 </a> </h4>
                        <span class="dy-video-rating"> 5.2 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-item-last dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> jQuery前端开发之网页特效 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> jQuery是一款优秀的JavaScript框架，它诞生的宗旨就是write less，do more（写更少的代码，做更多的事情）。jQuery可实现脚本与页面的分离，使得代码更加轻便、页面内容组织更加优雅。目前，基于jQuery开发的插件已达数千，开发者可使用这些插件来进行页面特效的快速开发，而不必纠结在功能实现上。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan6.png" alt="jQuery前端开发之网页特效"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> jQuery前端开发之网页特效 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Bootstrap与jQuery UI框架设计 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 响应式网页设计即一个网站能够兼容多种终端，无论用户使用笔记本还是iPad，页面都能够自动切换分辨率、图片尺寸及相关脚本功能等，以适应不同设备。在众多的响应式框架中，来自Twitter开源的Bootstrap无疑是当前最流行的前端框架。而针对移动平台应用，jQuery Mobile适用于所有流行的智能手机和平板电脑。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan7.png" alt="Bootstrap与jQuery UI框架设计"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Bootstrap与jQuery UI框架设计  </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> React native 企业开发实战！ </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 随着前端框架的发展，来自Facebook的前端类库React因为独特的设计而被开发者所喜爱。React引入了一些激动人心的新概念（如虚拟DOM、JSX等），使得前端开发者更关注应用的View部分，并慢慢从Web开发领域跨越到客户端领域。React同时拥有Native App的性能和Hybrid App的可维护性，并可以应用在多个平台上。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan8.png" alt="React native 企业开发实战"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a>React native 企业开发实战！ </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 企业开发实战！  </a> </h4>
                            <span class="dy-video-rating">5.2</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 人民邮电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书以大觅网项目进行贯穿，讲解当今前端开发最受欢迎的核心技术栈：Webpack+Vue.js+Vuex+ES6。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/qianduan9.png" alt="Vue 企业开发实战！"> <span class="dy-video-complete"></span> <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Vue 企业开发实战 </a> </h4>
                        <span class="dy-video-rating"> 5.2 </span> </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<br />
<!-------------------------------------------------------------------------------------------------------------------------------------------------------->
<!--大数据-->
<div class="main" style="margin-top: -40px;">
    <a style="font-size: 22px;" id="dashuju">大数据</a>
    <div class="dy-content">
        <div class="dy-videos">
            <ul class="dy-video-list">
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Java面向对象编程 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>
                            </ul>
                            <p class="dy-video-intro"> 自1995年诞生至今的Java语言，一直以其简明严谨的结构、简洁的语法编写、对网络应用和多媒体存取的支持、强大的稳健性及安全性而雄踞世界流行编程语言排行榜首，本书从变量、数据类型、运算符、流程控制、数组等基础语法带你入门，逐渐掌握Java的精髓，这是一个由浅入深的过程，也是一个收获满满的学习过程。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/dashuju1.png" alt="Java面向对象编程"> <span class="dy-video-nocomplete"></span>  <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Java面向对象编程 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Java核心API编程 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                                <p class="dy-video-intro"> 本本书深入探究Java高级实用技术的内容，从而进一步强化Java开发技能。主要内容包括集合框架、泛型、实用类、输入输出处理、多线程、Socket网络编程、XML解析等。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/dashuju2.png" alt="Java核心API编程"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Java核心API编程 </a> </h4>
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Java Web开发实战  </a> </h4>
                            <span class="dy-video-rating">6.6</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>
                            </ul>
                            <p class="dy-video-intro"> 本书紧紧围绕这三个技术内容展开详细讲解，不仅涵盖前端开发必需的HTML5及CSS3技术、JavaScript、jQuery、Ajax等知识，也包含JSP技术的基本语法、使用JSP实现对Web请求的获取与响应、通过JSP实现与数据库的访问交互和基于Servlet的业务控制等知识，从而让大家循序渐进地学会如何开发属于自己的Web应用程序。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/dashuju3.png" alt=" Java Web开发实战"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Java Web开发实战  </a> </h4>
                        <span class="dy-video-rating"> 6.6 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> MySQL数据库开发实战 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> MySQL数据库是当前最主流的关系型数据库之一，本书以MySQL数据库为核心，主要内容包括数据库安装、数据库表创建管理、使用SQL语句实现数据添加、修改、查询以及事务、视图、索引、备份和恢复等知识，并以员工晋级系统为例，完成一个典型系统的数据库的设计。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/dashuju4.png" alt="MySQL数据库开发实战"> <span class="dy-video-complete"></span> <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> MySQL数据库开发实战  </a> </h4>
                        <!-- <div class="dy-video-intro"> 死侍是一个亦正亦邪的角色。 </div>-->
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> SSM企业级框架实战 </a> </h4>
                            <span class="dy-video-rating">5.2</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                            </ul>
                            <p class="dy-video-intro">SSM框架是以Spring为核心，整合Spring MVC和Mybatis的轻量级框架技术的组合。利用SSM整合框架可以开发出分层、易扩展、易维护的企业级应用系统，能够极大地满足企业需求，减少开发工作量，提高开发效率和质量，并有效减少维护工作量。本书利用经典案例说明和实践，为读者提供提炼含金量十足的开发经验。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/dashuju5.png" alt="SSM企业级框架实战"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> SSM企业级框架实战 </a> </h4>
                        <span class="dy-video-rating"> 5.2 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-item-last dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Hadoop&Spark大数据开发实战 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书围绕Hadoop和Spark这两个主流技术进行讲解，主要内容包括Hadoop环境配置、分布式文件系统HDFS、分布式计算框架MapReduce、资源调度框架YARN与Hadoop新特性、大数据数据仓库Hive、离线处理辅助系统、Spark Core、Spark SQL、Spark Streaming等知识。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/dashuju6.png" alt="Hadoop&Spark大数据开发实战"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Hadoop&Spark大数据开发实战 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>

            </ul>
        </div>
    </div>
</div>
<br />
<!--------------------------------------------------------------------------------------------------------------------------------------------------->
<!--云计算-->
<div class="main" style="margin-top: -220px;">
    <a style="font-size: 22px;" id="yunjisaun">云计算</a>
    <div class="dy-content">
        <div class="dy-videos">
            <ul class="dy-video-list">
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 云计算部署实战 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>
                            </ul>
                            <p class="dy-video-intro"> Openstack目前获得了很多大公司的广泛支持，不仅能够搭建私有云，而且能够搭建公有云。本书针对具备Linux运维基础的人员，主要介绍了云计算平台OpenStack、公有云AWS、大数据Hadoop及CDH部署的相关知识与应用，以生动详细的理论讲解、企业级的实战项目案例，使读者能够掌握目前的热门技术。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yunjisuan1.png" alt="云计算部署实战"> <span class="dy-video-nocomplete"></span>  <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 云计算部署实战 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 云计算与网络安全 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                                <p class="dy-video-intro"> 云计算已经成为未来发展的趋势，虽然它带来了很多好处，但也同时带来了安全隐患。本书针对具备云计算基础的人群，首先介绍了网络信息安全体系、病毒木马、密码学、信息安全管理体系、局域网安全防御、VPN、防火墙、网站安全技术等传统安全内容，然后介绍了与云计算相关的安全内容，理论+实战，使读者对云计算安全有一个全面的认识。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yunjisuan2.png" alt="云计算与网络安全"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 云计算与网络安全 </a> </h4>
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Web开发实战  </a> </h4>
                            <span class="dy-video-rating">6.6</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>
                            </ul>
                            <p class="dy-video-intro"> 本书围绕Hadoop和Spark这两个主流技术进行讲解，主要内容包括Hadoop环境配置、分布式文件系统HDFS、分布式计算框架MapReduce、资源调度框架YARN与Hadoop新特性、大数据数据仓库Hive、离线处理辅助系统、Spark Core、Spark SQL、Spark Streaming等知识。 <a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yunjisuan3.png" alt=" Web开发实战"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Web开发实战  </a> </h4>
                        <span class="dy-video-rating"> 6.6 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-right">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> Python开发向导 </a> </h4>
                            <span class="dy-video-rating">8.0</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书针对开发零基础的人群，采用案例或任务驱动的方式，由入门到精通，采用边讲解边练习的方式，使读者能够快速掌握Python开发。本书首先介绍了Python的基础知识，然后介绍了面向对象的编程，并通过开发游戏项目体验到开发的乐趣，最后介绍了Python高级开发、网络编程、进程和线程、数据结构等内容。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yunjisuan4.png" alt="Python开发向导"> <span class="dy-video-complete"></span> <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> Python开发向导  </a> </h4>
                        <!-- <div class="dy-video-intro"> 死侍是一个亦正亦邪的角色。 </div>-->
                        <span class="dy-video-rating"> 8.0 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 大型网站架构与自动化运维 </a> </h4>
                            <span class="dy-video-rating">5.2</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社</li>

                            </ul>
                            <p class="dy-video-intro">本书针对具备Linux基础的人群，主要介绍了缓存代理、高性能内存对象缓存Memcached、分布式文件服务、大型网站架构、自动化运维等相关知识与应用，项目案例包括MFS分布式文件系统、百万/千万PV网站架构、Ansible、SaltStack、Puppet自动化运维，通过以上训练，使读者能够理解大型网站的架构，达到运维自动化的高度。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yunjisuan5.png" alt="大型网站架构与自动化运维"> <span class="dy-video-nocomplete"></span> <span class="dy-video-bg"></span> <span class="s-pay"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 大型网站架构与自动化运维 </a> </h4>
                        <span class="dy-video-rating"> 5.2 </span> </div>
                </li>
                <li data- class="dy-video-item dy-video-item-last dy-video-meta-left">
                    <div class="dy-video-meta">
                        <div class="dy-video-meta-bg"> </div>
                        <div class="dy-video-meta-dy">
                            <h4 class="dy-video-title"> <a> 数据库应用 </a> </h4>
                            <span class="dy-video-rating">7.3</span>
                            <ul class="dy-video-meta-list">
                                <li class="dy-video-actors"> <span class="dy-video-tip"> 水利水电出版社 </li>

                            </ul>
                            <p class="dy-video-intro"> 本书针对具备Linux基础的人群，主要介绍了关系型数据库MySQL、非关系型数据库MongoDB的相关知识与应用，以生动详细的理论讲解、深入浅出的实战项目案例，帮助读者掌握现代主流数据库的应用。<a class="dy-video-intro-more">更多</a> </p>
                        </div>
                        <div class="dy-video-meta-bg"> </div>
                    </div>
                    <div class="dy-video-poster"> <a class="dy-video-link"> <img class="dy-video-img" src="/static/staticszhihui/images/yunjisuan6.png" alt="数据库应用"> <span class="dy-video-complete"></span>  <span class="dy-video-bg"></span> </a> </div>
                    <div class="dy-video-primary">
                        <h4 class="dy-video-title"><a> 数据库应用 </a> </h4>
                        <span class="dy-video-rating"> 7.3 </span> </div>
                </li>

            </ul>
        </div>
    </div>
</div>
<br />

<!--客服状态栏-->
<br />
<div class="toolbar">
    <a href="###" class="toolbar-item toolbar-item-weixin">
        <span class="toolbar-layer"></span>
    </a>
    <a href="###" class="toolbar-item toolbar-item-feedback"></a>
    <a href="###" class="toolbar-item toolbar-item-app">
        <span class="toolbar-layer"></span>
    </a>
    <a href="javascript:scroll(0,0)" id="top" class="toolbar-item toolbar-item-top"></a>
</div>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
</div>
<!------------------------------------------------------------------------------------------------------->
<div id="dibu" style="height: 100px;">
    <!--二维码和文字-->
    <img src="/static/statics/images/weixin.png"  style="float: left;position: absolute;top: 3000px;left: 180px;"/>
    <a style="color: #A1A2A1;float: left;position: absolute;top: 3160px;left: 200px;font-size: 15px;">关注微信公众号</a>
    <img src="/static/statics/images/app.png" style="float: left;position: absolute;top: 3000px;left: 380px;"/>
    <a style="color: #A1A2A1;float: left;position: absolute;top: 3160px;left: 400px;font-size: 15px;">下载课工场APP</a>
    <!--li-->
    <ul style="color:#A1A2A1;font-size: 15px;position: absolute;top: 3000px;left: 620px;">
        <li class="dilii">关于我们</li>
        <li class="dili">课工场简介</li>
        <li class="dili">Ekgc简介</li>
        <li class="dili">走进创始人</li>
        <li class="dili">网络地图</li>
        <li class="dili">服务条款</li>
        <li class="dili">版权声明</li>
    </ul>
    <ul style="color:#A1A2A1;font-size: 15px;position: absolute;top: 3000px;left: 840px;">
        <li class="dilii">优质资源</li>
        <li class="dili">系列课</li>
        <li class="dili">岗位可课</li>
        <li class="dili">题库</li>
        <li class="dili">教材</li>
        <li class="dili">师资</li>
    </ul>
    <ul style="color:#A1A2A1;font-size: 15px;position: absolute;top: 3000px;left: 1060px;">
        <li class="dilii">服务中心</li>
        <li class="dili">微社区</li>
        <li class="dili">周边商场</li>
        <li class="dili">实训基地</li>
        <li class="dili">帮助中心</li>
    </ul>
    <ul style="color:#A1A2A1;font-size: 15px;position: absolute;top: 3000px;left: 1280px;">
        <li class="dilii">友情链接</li>
        <li class="dili">课工场</li>
        <li class="dili">北大青鸟</li>
        <li class="dili">北京大学</li>
    </ul>
    <br />
    <hr  style="margin-top: 30px;"/>
    <div style="color:#A1A2A1;">
        <a style="position: relative;top: 15px;left: 180px;">2019 北京课工场教育科技有限公司 版权所有 京ICP备15057271号 京公网安备11010802017390号</a>
        <a style="position: relative;top: 15px;left: 650px;">客服邮箱 ke@kgc.cn</a>
    </div>
</div>

</div>
</body>

</html>
