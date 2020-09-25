<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head lang="en">
    <meta charset="UTF-8">
    <title>jQuery图文卡片3D叠加轮播切换代码</title>

    <link rel="stylesheet" href="/static/css/public.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/stylekecheng.css" />
    <link href="/static/css/csskefu.css" rel="stylesheet" media="screen">
    <script type="text/javascript" src="/static/js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="/static/js/zturn.js"></script>

</head>

<!--轮播-->
<div class="lb_gl">
    <div class="container">
        <h1 class="turn_3d" style="position: relative;top: 20px;">《大数据开发工程师3.0标准版》O2O线下推荐课表</h1>
        <div class="pictureSlider poster-main" style="margin-top: 50px;">
            <div class="poster-btn poster-prev-btn"></div>
            <ul id="zturn" class="poster-list">
                <li class="poster-item  zturn-item">
                    <p class="xxgy">预科</p>
                    <p class="say" style="position: relative;top: 20px;">组班课程 </p>
                    <p style="position: relative;left: 10px;top: 30px;">根据学员基础情况进行针对性的辅导</p>
                    <div class="for_btn">

                        <!--<a href="#" class="in_page"><img src="statics/images/kctixi2.jpg" /></a>-->
                    </div>

                    <div class="students_star">
                        <p class="cell_list"><span class="lf"><!--根据学员基础情况进行针对性的辅导-->	</span></span>
                        </p>
                        <!--<p class="cell_list"><span>入职：<span class="darks">把酒问青天</span></span>-->
                        </p>

                    </div>
                </li>

                <li class="poster-item zturn-item">
                    <p class="xxgy">Java基础入门</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;初识Java<br />
                        &nbsp;&nbsp;&nbsp;变量和数据类型<br />
                        &nbsp;&nbsp;&nbsp;初识Java重难点串讲<br />
                        &nbsp;&nbsp;&nbsp;选择结构<br />
                        &nbsp;&nbsp;&nbsp;循环结构<br />
                        &nbsp;&nbsp;&nbsp;流程控制重难点串讲<br />
                        &nbsp;&nbsp;&nbsp;多重循环及程序调试<br />
                        &nbsp;&nbsp;&nbsp;循环进阶重难点串讲<br />
                        &nbsp;&nbsp;&nbsp;一维数组及经典应用<br />
                        &nbsp;&nbsp;&nbsp;二维数组<br />
                        &nbsp;&nbsp;&nbsp;数组重难点串讲</p>
                    <div class="for_btn">
                        <!--<img src="img/a2.png" width="100%">-->
                        <!--<a href="#" class="in_page"><img src="img/iconin.png" /></a>-->
                    </div>
                    <div class="students_star">
                        <p class="cell_list"><span class="lf"></span></span>
                        </p>

                        <p class="cell_list" style="position: relative;top: -200px;"><span>项目实战：&nbsp;&nbsp;&nbsp;吃货联盟订餐系统></span>
                        </p>

                    </div>
                </li>

                <li class="poster-item zturn-item">
                    <p class="xxgy">Java面向对象</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;认识类与对象<br />
                        &nbsp;&nbsp;&nbsp;封装<br />
                        &nbsp;&nbsp;&nbsp;继承和多态<br />
                        &nbsp;&nbsp;&nbsp;方法重写与多态<br />
                        &nbsp;&nbsp;&nbsp;抽象类和接口<br />
                        &nbsp;&nbsp;&nbsp;异常</p>
                    <div class="for_btn">
                        <!--<img src="img/a3.png" width="100%">-->
                        <!--<a href="#" class="in_page"><img src="img/iconin.png" /></a>-->
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;汽车租赁系统<br />
                            &nbsp;&nbsp;&nbsp;QuickHit</span>
                        </p>

                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Java高级API</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;集合框架和泛型（一）<br />
                        &nbsp;&nbsp;&nbsp;集合框架和泛型（二）<br />
                        &nbsp;&nbsp;&nbsp;实用类介绍（一）<br />
                        &nbsp;&nbsp;&nbsp;实用类介绍（二）<br />
                        &nbsp;&nbsp;&nbsp;综合案例：超市会员管理系统<br />
                        &nbsp;&nbsp;&nbsp;输入和输出处理（一）<br />
                        &nbsp;&nbsp;&nbsp;输入和输出处理（二）<br />
                        &nbsp;&nbsp;&nbsp;多线程<br />
                        &nbsp;&nbsp;&nbsp;网络编程<br />
                        &nbsp;&nbsp;&nbsp;XML（一）<br />
                        &nbsp;&nbsp;&nbsp;XML（二）</p>
                    <div class="for_btn">
                        <!--<img src="img/a3.png" width="100%">-->
                        <!--<a href="#" class="in_page"><img src="img/iconin.png" /></a>-->
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;TXT迷你小说阅读器<br />
                            &nbsp;&nbsp;&nbsp;嗖嗖移动业务大厅</span>
                        </p>

                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">MySQL数据库</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;初识MySQL<br />
                        &nbsp;&nbsp;&nbsp;MySQL数据库管理<br />
                        &nbsp;&nbsp;&nbsp;使用DQL查询数据（一）<br />
                        &nbsp;&nbsp;&nbsp;使用DQL查询数据（二）<br />
                        &nbsp;&nbsp;&nbsp;MySQL事务、索引、恢复和备份<br />
                        &nbsp;&nbsp;&nbsp;数据库设计</p>
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;银行ATM存取款机系统</span>
                        </p>

                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Web前端技术</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;走进HTML<br />
                        &nbsp;&nbsp;&nbsp;CSS<br />
                        &nbsp;&nbsp;&nbsp;CSS高级操作<br />
                        &nbsp;&nbsp;&nbsp;JavaScript基础<br />
                        &nbsp;&nbsp;&nbsp;JavaScript操作BOM、DOM对象<br />
                        &nbsp;&nbsp;&nbsp;JavaScript对象及初识面向对象（扩展）<br />
                        &nbsp;&nbsp;&nbsp;JQuery基础<br />
                        &nbsp;&nbsp;&nbsp;JQuery中的事件与DOM操作<br />
                        &nbsp;&nbsp;&nbsp;表单校验</p>
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;"><!--项目实战：<br />&nbsp;&nbsp;&nbsp;银行ATM存取款机系统--></span>
                        </p>

                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Java Web</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;使用JDBC操作数据库<br />
                        &nbsp;&nbsp;&nbsp;DAO模式及单例模式<br />
                        &nbsp;&nbsp;&nbsp;搭建Web环境初识JSP<br />
                        &nbsp;&nbsp;&nbsp;JSP实现数据传递和保存<br />
                        &nbsp;&nbsp;&nbsp;Servlet与过滤器<br />
                        &nbsp;&nbsp;&nbsp;分页查询<br />
                        &nbsp;&nbsp;&nbsp;项目练习<br />
                        &nbsp;&nbsp;&nbsp;EL与JSTL<br />
                        &nbsp;&nbsp;&nbsp;第三方控件<br />
                        &nbsp;&nbsp;&nbsp;监听器与MVC<br />
                        &nbsp;&nbsp;&nbsp;Ajax与JQuery<br />
                        &nbsp;&nbsp;&nbsp;JQuery的Ajax交互扩展<br />
                        &nbsp;&nbsp;&nbsp;使用Linux操作系统<br />
                        &nbsp;&nbsp;&nbsp;Linux系统软件安装及项目发布</p>
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;使用Ajax技术改进新闻发布</span>
                        </p>

                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">MyBatis</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;MyBatis入门<br />
                        &nbsp;&nbsp;&nbsp;SQL映射文件<br />
                        &nbsp;&nbsp;&nbsp;动态SQL<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;"><!--项目实战：<br />&nbsp;&nbsp;&nbsp;使用Ajax技术改进新闻发布--></span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Spring</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;Spring核心<br />
                        &nbsp;&nbsp;&nbsp;IOC和AOP扩展<br />
                        &nbsp;&nbsp;&nbsp;MyBatis与Spring的整合<br />
                        &nbsp;&nbsp;&nbsp;Spring应用扩展<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;"><!--项目实战：<br />&nbsp;&nbsp;&nbsp;使用Ajax技术改进新闻发布--></span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Spring MVC</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;Spring MVC体系结构和处理请求控制器<br />
                        &nbsp;&nbsp;&nbsp;Spring MVC核心应用-1<br />
                        &nbsp;&nbsp;&nbsp;Spring MVC核心应用-2<br />
                        &nbsp;&nbsp;&nbsp;Spring MVC扩展和SSM框架整合<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;项目-技能点<br />
                            &nbsp;&nbsp;&nbsp;APP信息管理平台</span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Hibernate框架</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;Oracle数据库入门<br />
                        &nbsp;&nbsp;&nbsp;操作Oracle数据库<br />
                        &nbsp;&nbsp;&nbsp;Hibernate初体验<br />
                        &nbsp;&nbsp;&nbsp;HQL查询语言<br />
                        &nbsp;&nbsp;&nbsp;Hibernate中配置关联映射<br />
                        &nbsp;&nbsp;&nbsp;HQL连接查询与Hibernate注解<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;"><!--项目实战：<br />&nbsp;&nbsp;&nbsp;项目-技能点<br />
&nbsp;&nbsp;&nbsp;APP信息管理平台--></span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Struts2框架</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;Struts2初体验<br />
                        &nbsp;&nbsp;&nbsp;Struts2配置<br />
                        &nbsp;&nbsp;&nbsp;OGNL表达式<br />
                        &nbsp;&nbsp;&nbsp;Struts2拦截器<br />
                        &nbsp;&nbsp;&nbsp;SSH框架整合<br />
                        &nbsp;&nbsp;&nbsp;使用Maven构建项目<br />
                        &nbsp;&nbsp;&nbsp;使用Struts2实现Ajax<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;爱旅行<br />
                            &nbsp;&nbsp;&nbsp;数据调研平台<br />
                            &nbsp;&nbsp;&nbsp;SL会员商城<br />
                            &nbsp;&nbsp;&nbsp;代理商管理系统<br />
                            &nbsp;&nbsp;&nbsp;scrum</span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Dubbox的微服实战</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;分布式 微服 集群概念介绍及docker环境搭建<br />
                        &nbsp;&nbsp;&nbsp;Springboot<br />
                        &nbsp;&nbsp;&nbsp;基于Dubbox的微服架构搭建<br />
                        &nbsp;&nbsp;&nbsp;MQ+Redis<br />
                        &nbsp;&nbsp;&nbsp;分布式锁及分布式事务处理、高并发测试<br />
                        &nbsp;&nbsp;&nbsp;分布式第三方接入（微信、支付宝）<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;大觅网<br /></span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Python课程</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;Python基础及开发环境<br />
                        &nbsp;&nbsp;&nbsp;Python基础练习<br />
                        &nbsp;&nbsp;&nbsp;Python函数<br />
                        &nbsp;&nbsp;&nbsp;Python面向对象<br />
                        &nbsp;&nbsp;&nbsp;模块包及文件操作<br />
                        &nbsp;&nbsp;&nbsp;Python访问数据库<br />
                        &nbsp;&nbsp;&nbsp;Python多线程编程<br />
                        &nbsp;&nbsp;&nbsp;Python网络爬虫<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;"><!--项目实战：<br />&nbsp;&nbsp;&nbsp;大觅网<br />--></span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">Hadoop开发</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;大数据及Hadoop概述<br />
                        &nbsp;&nbsp;&nbsp;分布式文件系统HDFS<br />
                        &nbsp;&nbsp;&nbsp;分布式计算框架MaoReduce<br />
                        &nbsp;&nbsp;&nbsp;分布式列式数据库HBase<br />
                        &nbsp;&nbsp;&nbsp;Hadoop综合应用<br />
                        &nbsp;&nbsp;&nbsp;Python大数据应用<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;">项目实战：<br />&nbsp;&nbsp;&nbsp;爱旅行(热门搜索)<br /></span>
                        </p>
                    </div>
                </li>

                <!------------------------------------------------------------------------------------------------------------------------------------------->
                <li class="poster-item zturn-item">
                    <p class="xxgy">求职面试</p>
                    <p class="say" style="font-size: 15px;position: relative;top: 20px;">&nbsp;&nbsp;&nbsp;面试礼仪<br />
                        &nbsp;&nbsp;&nbsp;简历撰写<br />
                        &nbsp;&nbsp;&nbsp;面试技巧<br />
                    <div class="for_btn">
                    </div>
                    <div class="students_star">
                        <p class="cell_list">
                        </p>
                        <p class="cell_list" style="position: relative;top: -200px;"><!--项目实战：<br />&nbsp;&nbsp;&nbsp;爱旅行(热门搜索)--><br /></span>
                        </p>
                    </div>
                </li>




















            </ul>

        </div>
    </div>

</div>


<script type="text/javascript">
    var aa = new zturn({
        id: "zturn",
        opacity: 0.9,
        width: 382,
        Awidth: 1024,
        scale: 0.9
    })
    var ab = new zturn({
        id: "zturn2",
        opacity: 0.8,
        width: 382,
        Awidth: 1024,
        scale: 0.6
    })
</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>

</html>