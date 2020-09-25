<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>网易邮箱6.0介绍上下滚动动画效果插件jquery.fullPage</title>
    <link rel="stylesheet" href="/static/css/jquery.fullPage.css">
    <link href="/static/css/lanrenzhijia.css" type="text/css" rel="stylesheet" />
    <script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
    <script src="http://libs.baidu.com/jqueryui/1.8.22/jquery-ui.min.js "></script>
    <script src="/static/js/jquery.fullPage.min.js"></script>
    <script>
        $(function(){
            if($.browser.msie && $.browser.version < 10){
                $('body').addClass('ltie10');
            }
            $.fn.fullpage({
                verticalCentered: false,
                anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'page6', 'page7', 'page8', 'page9', 'page10'],
                navigation: true,
                navigationTooltips: ['小组介绍', '项目截图', '项目效果', '多种特效', '实现功能', '留言处理', '校园通', '新想法', '开始发车 ', ]
            });
        });
    </script>
</head>
<body>

<div class="section section1">
    <div class="bg"><img src=" /static/wangyi/section1.jpg" alt=""></div>
    <div class="bg11"></div>
    <div class="bg12"></div>
    <div class="bg13"></div>
    <div style="position: relative;top: 50px;" class="hgroup">
        <h1><a href="http://www.jq22.com/">爱情公寓6</a></h1>
        <h2>爱你</h2>
    </div>
    <p class="p11" style="position: relative;top: 100px;left: 870px;"><a style="color: #FF1880;font-size: 28px;font-family: '楷体';position: absolute;top: -80px;left: 70px;">新的故事开始了</a>
        &nbsp;&nbsp;&nbsp;爱情公寓小组&mdash;&mdash;做的项目是课工场官网和校园通<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最好的朋友就在身边，最爱的人就住在对面
        <a style="color: white;font-size: 35px;position: relative;top: 260px;left: -670px;">校园通</a>
        <a style="color: white;font-size: 35px;position: relative;top: 370px;left: -320px;">课工场</a>
        <a style="color: white;font-size: 35px;position: relative;top: 270px;left: 30px;">管</a>
        <a style="color: white;font-size: 35px;position: relative;top: 209px;left: 627px;">理</a><br />
        <a style="color: white;font-size: 35px;position: relative;top: 1339;left:665px;float: right;position: absolute;top: 295px;">员</a>
    </p>

</div>

<div class="section section2">
    <div class="bg"><img src="/static/wangyi/section2.jpg" alt=""></div>
    <div class="bg21"></div>
    <div class="bg22"></div>
    <div class="bg23"></div>
    <strong>[ 项目图片 ]</strong>
    <h3>华丽蜕变，尽享愉悦之美</h3>
    <p class="p1">按照课工场官网1比1制作 尽量100%还原，在制作中也发现了很多平常没有发现的隐藏功能</p>
</div>

<div class="section section3">
    <div class="bg"><img src="/static/wangyi/section3.jpg" alt=""></div>
    <div class="bg31"></div>
    <div class="bg32"></div>
    <div class="bg33"></div>
    <strong>[ 项目效果 ]</strong>
    <h3>心随眼动，感官直接体验</h3>
    <p class="p3">网页采用了全新的视觉化交互设计，通过对界面的整体风格设计、重要信息的视觉化处理以及元素本身的视觉传达优化，来实现产品流程设计和交互行为塑造。从视觉的角度出发，让用户无需多想，直接通过感官与产品进行交互。</p>
</div>

<div class="section section4">
    <div class="bg"><img src="/static/wangyi/section4.jpg" alt=""></div>
    <div class="bg41"></div>
    <div class="bg42"></div>
    <div class="bg43"></div>
    <strong>[ 多种特效 ]</strong>
    <h3>美轮美奂，百变尽随你心</h3>
    <p class="p1">在这个项目里用到了各种各样的特效 比如轮播、悬停显示详细信息、悬停图片缩放等等</p>
</div>

<div class="section section5">
    <div class="bg"><img src="/static/wangyi/section5.jpg" alt=""></div>
    <strong>[ 实现功能 ]</strong>
    <h3>灵活机变，全面为你而生</h3>
    <div class="bg51">
        <h4>显示密码安全等级</h4>
        <p>更客观的看到当前密码的安全性 防止被盗用</p>
    </div>
    <div class="bg52">
        <h4 style="position: relative;left: 40px;">手机短信验证</h4>
        <p>让注册时 更方便的绑定信息和收到官方第一消息</p>
    </div>
    <div class="bg53">
        <h4 style="position: relative;left: 40px;">课工场首页</h4>
        <p>尽量100%还原，并且添加了其他的特效</p>
    </div>
    <div class="bg54">
        <h4 style="position: relative;left: 40px;">管理员界面</h4>
        <p>随时查看关于网页的最新情况，方便进行操作</p>
    </div>
</div>

<div class="section section6">
    <div class="bg"><img src="/static/wangyi/section6.jpg" alt=""></div>
    <div class="bg61"></div>
    <div class="bg62"></div>
    <strong>[ 留言处理 ]</strong>
    <!--	<h3 style="border: 1px solid red;display: inline-block;color: black;"><a>学习利器</a></h3>-->

    <div class="txt6">
        <a style="font-size: 35px;position: absolute;top: -180px;left: -300px;color: #748A9E">管理员处理用户反馈的问题</a>
        <p>管理员及时处理 用户反馈的问题<br>方便更好的处理用户使用时所产生的疑问</p>
        <p>对于需要后续处理的重要反馈，如果正忙来不及处理和回复，只需设置为待办邮件，在待办时间到期时，邮件会在文件夹置顶提示</p>
        <p>如此高效迅速处理反馈，让反馈处理过程变成更轻松和快捷。</p>
    </div>
</div>

<div class="section section7">
    <div class="bg"><img src="/static/wangyi/section7.jpg" alt=""></div>
    <div class="bg71"></div>
    <div class="bg72"></div>
    <div class="bg73"></div>
    <strong>[ 校园通 ]</strong>
    <h3>一目了然，来往邮件更清晰</h3>
    <div class="txt7">
        <p>包含平时生活需要的基础功能<br>更大程度的方便学生的生活</p>
        <p>同时支持查询快递<br>网上点餐或者购买商品</p>
    </div>
    <div class="bg74"><img src="/static/wangyi/bg74.png" alt=""></div>
</div>

<div class="section section8">
    <div class="bg"><img src="/static/wangyi/section8.jpg" alt=""></div>
    <div class="bg81"></div>
    <div class="bg82"></div>
    <div class="bg83"></div>
    <div class="bg84"></div>
    <strong>[ 新想法 ]</strong>
    <h3>厚积薄发，大幅度提速创新标</h3>
    <p class="p8">对以后有明确的目标 会增加更多使用的功能</p>
</div>

<!--<div class="section section9">
	<div class="bg"><img src="/static/wangyi/section9.jpg" alt=""></div>
	<strong>[ 让沟通更有趣 ]</strong>
	<h3><span></span>沟通无界，连接易信无缝整合</h3>
	<div class="bg91">
		<p>易信扫描二维码即可登录网易<br>邮箱6.0版，“扫一扫”让邮<br>箱登录更方便。</p>
	</div>
	<div class="bg92">
		<p>登录邮箱后，可直接使用Web<br>易信和好友聊天，还可以发图<br>片，让聊天更有趣。</p>
	</div>
	<div class="bg93">
		<p>易信和邮箱新邮件同步提醒，<br>在易信可以直接查看和回复<br>邮件，手机收发邮件更快捷。</p>
	</div>-->
</div>

<div class="section section10">
    <div class="bg"><img src="/static/wangyi/section10.jpg" alt=""></div>
    <div class="bg101"></div>
    <div class="bg102"></div>
    <div class="bg103"></div>
    <a class="go" href="denglu.html">懒人之家</a>

</div>








</body>
</html>