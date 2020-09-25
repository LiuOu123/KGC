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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>课工场APP官方下载</title>

    <link rel="stylesheet" type="text/css" href="/static/css/stylemonishouji.css" />
    <link rel="stylesheet" type="text/css" href="/static/css/zhihuijiaocai.css" />
    <script src="/static/js/jquery.min.js" type="text/javascript"></script>

</head>
<body><script src="/static/demos/googlegg.js"></script>

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
        <a href="#" id="appa" style=" color: #9FC005;text-decoration: none;position:relative;left: -30px;">APP下载</a>
        <a href="#" class="siaa" style="position:relative;left:-20px ;" ;>登录</a>
        <a href="#" class="siaa" style="position:relative;left:-20px ;">|</a>
        <a href="#" class="siaa" style="position:relative;left:-20px ;">注册</a>
    </div>
    <img src="/static/img/zhihuierweima.jpg" id="apperweima" style="float: right;position: absolute;top: 50px;left: 1180px;" />
</div>

<div class="xcx_qingqiao">
    <div class="container">
        <div class="xcx_qingqiao_title"><p><span>移动课工场</div>
        <div class="xcx_dowhat_main" style="position: relative;top: 10px;">
            <div class="xcx_phone">
                <div class="xcx_phone_main">
                    <ul style="">
                        <li><img src="/static/images/xcx/pic_1.jpg"></li>
                        <li><img src="/static/images/xcx/pic_2.jpg"></li>
                        <li><img src="/static/images/xcx/pic_3.jpg"></li>
                        <li><img src="/static/images/xcx/pic_4.jpg"></li>
                        <li><img src="/static/images/xcx/pic_5.jpg"></li>
                        <li><img src="/static/images/xcx/pic_6.jpg"></li>
                    </ul>
                </div>
            </div>
            <div class="xcx_dowhat_list">
                <ul>
                    <li class="li_left li_1 current"><div class="title" style="color: white;">首页</div><div class="pic"></div></li>
                    <li class="li_left li_2"><div class="title" style="color: white;">分类</div><div class="pic"></div></li>
                    <li class="li_left li_3"><div class="title" style="position: relative;left: 20px;color: white;">题库</div><div class="pic"></div></li>
                    <li class="li_right li_4"><div class="title" style="color: white;">专项技能</div><div class="pic"></div></li>
                    <li class="li_right li_5"><div class="pic"></div><div class="title" style="color: white;">学习</div></li>
                    <li class="li_right li_6"><div class="title" style="position: relative;left: -50px;color: white;">我</div><div class="pic"></div></li>
                </ul>
            </div>
        </div>

    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $(".xcx_dowhat_list ul li").hover(function () {
            $(".xcx_dowhat_list ul li").removeClass("current");
            $i = $(this).index();
            $(this).addClass("current");
            top1 = -$i * 364;
            $(".xcx_phone_main ul").stop(true, false).animate({"top": top1});
        });
    });
</script>

<script>
    $("#apperweima").hide();
    var flag=false;
    $("#appa").click(function(){
        if(flag==false){
            $("#apperweima").show(500);
            flag=true;
        }else{
            $("#apperweima").hide(500);
            flag=false;
        }

    })
</script>
</div>
</body>
</html>