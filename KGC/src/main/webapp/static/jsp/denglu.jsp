<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" type="text/css" href="/static/css/denglu.css">
    <link href="/static/css/img_smooth_check.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="/static/js/img_smooth_check.js"></script>
    <script src="/static/js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/js/denglu.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/layer/layer.js" type="text/javascript" charset="utf-8"></script>
    <script src="/static/res/layui/layui.js"></script>
    <link rel="shortcut icon"  href="/static/img/zhihuilogo.png" >

</head>
<body>

<div id="zong">
    <!--背景图片-->
    <img src="/static/img/denglubeijingtu.png" width="101% height="490px" id="denglutu"/>
    <div id="denglukaung">
        <center>
            <p id="denglubiaoti">欢迎登录</p>
            <p>
                <!--登录框和登录框前面的图片-->
            <form action="/login" method="post">
                <i class="icon-user"><img src="/static/img/1586394090(1).png" width="29px" height="34px" id="denglukuangtu"/></i>
                <input id="login_name"  name="username" style="padding-left: 30px;"  type="text" />
            </p>
            <p>
                <!--密码框和密码前面的图片-->
                <i class="icon-pass"><img src="/static/img/1586394102(1).png"  width="29px" height="34px" id="denglumimatu"/></i>
                <input id="login_pass" name="password" style="padding-left: 30px;"  type="password" />
            </p>
            <p>
                <!--登录按钮-->
                <input type="submit" class="login-submit" id="login" value="登 录"/>
            </p>
            </form>
            <p>
                <!--忘记密码 注册-->
                <a href="#" id="dengluzi1">忘记密码</a>
                <a href="zhuce.html" id="dengluzi2">注册</a>
            </p>
            <p>
                <!--其他方式登录-->
            <h5 id="dengluqita">其他方式登录</h5></a>
            <img src="/static/img/weixinmendian_Wechat_48px_1226623_easyicon.net.ico" title="使用微信登录"  id="qita1" />
            <img src="/static/img/qq_48px_1164430_easyicon.net.ico" title="使用QQ登录" id="qita2" width="40px" height="40px" />
            <img src="/static/img/weibo_48px_1114573_easyicon.net.ico" title="使用微博登录"  id="qita3"  width="40px" height="40px"/>
            </p>
            <li>©2019 北京课工场教育科技有限公司 版权所有 京ICP备15057271号 京公网安备11010802017390号
                <a id="di">网站首页</a>
                <a id="di">实战</a>
                <a id="di">岗位课</a>
                <a id="di">微社区</a>
            </li>
            <a id="di" style="position: relative;top: -20px;left: 368px;">关于课工场</a>
            <a id="di" style="position: relative;top: -20px;left: 378px;">联系我们</a>
        </center>
    </div>
</div>
<img src="/static/img/1586397993(1).png" style="float: left;position: absolute;top: 220px;left:750px;height: 280px;" />



<script type="text/javascript">

    var flag=false;
    $("form").submit(function(){
        var name=$("#login_name").val();
        var pwd=$("#login_pass").val();
        if(name==""&&pwd==""){
            layer.msg('账号密码不能为空');
            return false;
        }else if(name==null||name==""){
            layer.tips('账号不能为空', '#login_name');
            return false;
        }else if(pwd==null||pwd==""){
            layer.tips('密码不能为空', '#login_pass');
            return false;
        }

        return true;


    })
</script>
</div>
</body>
</html>
