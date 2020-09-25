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
<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>

    <link href="/static/css/csskefu.css" rel="stylesheet" media="screen">

    <script type="text/javascript" src="/static/js/jquery-1.7.1.min.js"></script>
    <style type="text/css">
        td{
            border: 1px solid #DDDDDD;
            padding-left: -25px;
        }
        tr:hover{
            background-color: #EAEAEA;
        }
        li{
            margin-top: 10px;
        }
    </style>

</head>
<body>
<center>
    <table class="am-table am-table-bordered am-table-centered am-table-striped am-table-hover" style="text-align: center;width: 900px;height: 2000px;font-size: 14px;">
        <tr  style="height: 40px;">
            <th colspan="3" class="am-text-lg"  style="background-color: #D3E776;"><center>《大数据开发工程师3.0标准版》O2O线下推荐课表</center></th>
        </tr>
        <tr style="height: 30px;">
            <th colspan="2">课程体系</th>
            <th rowspan="2" class="am-text-middle">项目实战</th>
        </tr style="height: 30px;">
        <tr  style="height: 30px;">
            <th>模块</th>
            <th>线下教学</th>
        </tr>
        <tr style="height: 100px;">
            <td class="am-text-middle">预科</td>
            <td>组班课程 <br>根据学员基础情况进行针对性的辅导</td>
            <td></td>
        </tr>
        <tr style="height: 310px;">
            <td class="am-text-middle">Java基础入门</td>
            <td>
                <ul class="am-text-left am-margin-left-xl">
                    <li>初识Java</li>
                    <li>变量和数据类型</li>
                    <ul class="am-margin-0">
                        <li>初识Java重难点串讲</li>
                    </ul>
                    <li>选择结构</li>
                    <li>循环结构</li>
                    <ul class="am-margin-0">
                        <li>流程控制重难点串讲</li>
                    </ul>
                    <li>多重循环及程序调试</li>
                    <ul class="am-margin-0">
                        <li>循环进阶重难点串讲</li>
                    </ul>
                    <li>一维数组及经典应用</li>
                    <li>二维数组</li>
                    <ul class="am-margin-0">
                        <li>数组重难点串讲</li>
                    </ul>
                </ul>
            </td>
            <td class="am-text-middle">吃货联盟订餐系统</td>
        </tr>
        <tr  style="height: 200px;">
            <td class="am-text-middle">Java面向对象</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>认识类与对象</li>
                    <li>封装</li>
                    <li>继承和多态</li>
                    <li>方法重写与多态</li>
                    <li>抽象类和接口</li>
                    <li>异常</li>
                </ul>
            </td>
            <td>
                <ul class="am-text-middle">
                    <li>汽车租赁系统</li>
                    <li>QuickHit</li>
                </ul>
            </td>
        </tr>
        <tr  style="height: 310px;">
            <td class="am-text-middle">Java高级API</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>集合框架和泛型（一）</li>
                    <li>集合框架和泛型（二）</li>
                    <li>实用类介绍（一）</li>
                    <li>实用类介绍（二）</li>
                    <li>综合案例：超市会员管理系统</li>
                    <li>输入和输出处理（一）</li>
                    <li>输入和输出处理（二）</li>
                    <li>多线程</li>
                    <li>网络编程</li>
                    <li>XML（一）</li>
                    <li>XML（二）</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>TXT迷你小说阅读器</li>
                    <li>嗖嗖移动业务大厅</li>
                </ul>
            </td>
        </tr>
        <tr  style="height: 200px;">
            <td class="am-text-middle">MySQL数据库</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>初识MySQL</li>
                    <li>MySQL数据库管理</li>
                    <li>使用DQL查询数据（一）</li>
                    <li>使用DQL查询数据（二）</li>
                    <li>MySQL事务、索引、恢复和备份</li>
                    <li>数据库设计</li>
                </ul>
            </td>
            <td class="am-text-middle">银行ATM存取款机系统</td>
        </tr>
        <tr  style="height: 290px;">
            <td class="am-text-middle">Web前端技术</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>走进HTML</li>
                    <li>CSS</li>
                    <li>CSS高级操作</li>
                    <li>JavaScript基础</li>
                    <li>JavaScript操作BOM、DOM对象</li>
                    <ul class="am-margin-0">
                        <li>JavaScript对象及初识面向对象（扩展）</li>
                    </ul>
                    <li>JQuery基础</li>
                    <li>JQuery中的事件与DOM操作</li>
                    <li>表单校验</li>
                </ul>
            </td>
            <td></td>
        </tr>
        <tr  style="height: 400px;">
            <td class="am-text-middle">Java Web</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>使用JDBC操作数据库</li>
                    <li>DAO模式及单例模式</li>
                    <li>搭建Web环境初识JSP</li>
                    <li>JSP实现数据传递和保存</li>
                    <li>Servlet与过滤器</li>
                    <li>分页查询</li>
                    <li>项目练习</li>
                    <li>EL与JSTL</li>
                    <li>第三方控件</li>
                    <li>监听器与MVC</li>
                    <li>Ajax与JQuery</li>
                    <li>JQuery的Ajax交互扩展</li>
                    <li>使用Linux操作系统</li>
                    <li>Linux系统软件安装及项目发布</li>
                </ul>
            </td>
            <td class="am-text-middle">使用Ajax技术改进新闻发布</td>
        </tr>
        <tr  style="height: 150px;">
            <td class="am-text-middle">MyBatis</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>MyBatis入门</li>
                    <li>SQL映射文件</li>
                    <li>动态SQL</li>
                </ul>
            </td>
            <td></td>
        </tr>
        <tr  style="height: 150px;">
            <td class="am-text-middle">Spring</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>Spring核心</li>
                    <li>IOC和AOP扩展</li>
                    <li>MyBatis与Spring的整合</li>
                    <li>Spring应用扩展</li>
                </ul>
            </td>
            <td></td>
        </tr>
        <tr  style="height: 190px;">
            <td class="am-text-middle">Spring MVC</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>Spring MVC体系结构和处理请求控制器</li>
                    <li>Spring MVC核心应用-1</li>
                    <li>Spring MVC核心应用-2</li>
                    <li>Spring MVC扩展和SSM框架整合</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>项目-技能点</li>
                    <li>APP信息管理平台</li>
                </ul>
            </td>
        </tr>
        <tr  style="height: 200px;">
            <td class="am-text-middle">Hibernate框架</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>Oracle数据库入门</li>
                    <li>操作Oracle数据库</li>
                    <li>Hibernate初体验</li>
                    <li>HQL查询语言</li>
                    <li>Hibernate中配置关联映射</li>
                    <li>HQL连接查询与Hibernate注解</li>
                </ul>
            </td>
            <td></td>
        </tr>
        <tr  style="height: 220px;">
            <td class="am-text-middle">Struts2框架</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>Struts2初体验</li>
                    <li>Struts2配置</li>
                    <li>OGNL表达式</li>
                    <li>Struts2拦截器</li>
                    <li>SSH框架整合</li>
                    <li>使用Maven构建项目</li>
                    <li>使用Struts2实现Ajax</li>
                </ul>
            </td>
            <td>
                <ul>
                    <li>爱旅行</li>
                    <li>数据调研平台</li>
                    <li>SL会员商城</li>
                    <li>代理商管理系统</li>
                    <li>scrum</li>
                </ul>
            </td>
        </tr>
        <tr  style="height: 250px;">
            <td class="am-text-middle">基于Dubbox的微服实战</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>分布式、微服、集群概念介绍及docker环境搭建</li>
                    <li>Springboot</li>
                    <li>基于Dubbox的微服架构搭建</li>
                    <li>MQ+Redis</li>
                    <li>分布式锁及分布式事务处理、高并发测试</li>
                    <li>分布式第三方接入（微信、支付宝）</li>
                </ul>
            </td>
            <td class="am-text-middle">大觅网</td>
        </tr>
        <tr  style="height: 260px;">
            <td class="am-text-middle">Python课程</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>Python基础及开发环境</li>
                    <li>Python基础练习</li>
                    <li>Python函数</li>
                    <li>Python面向对象</li>
                    <li>模块包及文件操作</li>
                    <li>Python访问数据库</li>
                    <li>Python多线程编程</li>
                    <li>Python网络爬虫</li>
                </ul>
            </td>
            <td></td>
        </tr>
        <tr  style="height: 200px;">
            <td class="am-text-middle">Hadoop开发</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>大数据及Hadoop概述</li>
                    <li>分布式文件系统HDFS</li>
                    <li>分布式计算框架MaoReduce</li>
                    <li>分布式列式数据库HBase</li>
                    <li>Hadoop综合应用</li>
                    <li>Python大数据应用</li>
                </ul>
            </td>
            <td class="am-text-middle">爱旅行（热门搜索）</td>
        </tr>
        <tr  style="height: 100px;">
            <td class="am-text-middle">求职面试</td>
            <td>
                <ul class="am-margin-left-xl am-text-left">
                    <li>面试礼仪</li>
                    <li>简历撰写</li>
                    <li>面试技巧</li>
                </ul>
            </td>
            <td></td>
        </tr>
    </table>
</center>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>



<div class="livechat-girl animated"> <a href="kechenglunbo.html" target="_blank"><img class="girl" src="/static/img/en_3.png"></a>
    <div class="livechat-hint rd-notice-tooltip rd-notice-type-success rd-notice-position-left single-line show_hint">
        <div class="rd-notice-content">使用翻页模式观看</div>
    </div>
    <div class="animated-circles">
        <div class="circle c-1"></div>
        <div class="circle c-2"></div>
        <div class="circle c-3"></div>
    </div>
</div>
<script type="text/javascript">
    $("tr:even").css("background-color","#F9F9F9");

    $("tr:odd").hover(function(){
        $(this).css("background-color","#E9E9E9");
    },function(){
        $(this).css("background-color","white");
    })

    $("tr:even").hover(function(){
        $(this).css("background-color","#E9E9E9");
    },function(){
        $(this).css("background-color","#F9F9F9");
    })
</script>
<script type="text/javascript">
    (function($) {
        setInterval(function(){
            if($(".animated-circles").hasClass("animated")){
                $(".animated-circles").removeClass("animated");
            }else{
                $(".animated-circles").addClass('animated');
            }
        },3000);
        var wait = setInterval(function(){
            $(".livechat-hint").removeClass("show_hint").addClass("hide_hint");
            clearInterval(wait);
        },4500);
        $(".livechat-girl").hover(function(){
            clearInterval(wait);
            $(".livechat-hint").removeClass("hide_hint").addClass("show_hint");
        },function(){
            $(".livechat-hint").removeClass("show_hint").addClass("hide_hint");
        }).click(function(){
            /*if(isMobile){
                 window.location.href = 'http://www.baidu.com';
            }else{
                var oWidth = 606,
                    oHeight = 630,
                    top = ($(window).height()/2)-(oHeight/2),
                    left = ($(window).width()/2)-(oWidth/2);
                window.open('http://www.baidu.com','','width='+oWidth+',height='+oHeight+',scrollbars=yes,top='+top+',left='+left+',resizable=yes');
            }*/
        });
    })(jQuery);
</script>


</body>
</html>
