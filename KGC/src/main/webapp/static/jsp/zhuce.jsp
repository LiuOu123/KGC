<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/9/23
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>注册</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/static/res/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/static/res/admin.css" media="all">
    <link rel="stylesheet" href="/static/res/login.css" media="all">
    <link rel="stylesheet" type="text/css" href="/static/css/zhuce.css" />
    <script src="/static/res/js/jquery-3.4.1.min.js"></script>
    <script src="/static/res/layui/layui.js"></script>
    <script src="/static/res/js/add.js"></script>
    <script src="/static/js/denglu.js" type="text/javascript" charset="utf-8"></script>
</head>

<body>
<img src="/static/img/微信图片_20200411134442.png" width="100%" height="900px" />
<img src="/static/img/xuxian.png" height="500px" id="xuxian1" />

<div id="zong">

    <!--已有账号，马上登录 登录按钮-->
    <a  href="denglu.html"><input type="button" id="yiyouzhanghao" value="已有账号，马上登录" /></a>

    <!--其他登录方式-->
    <a id="qitadenglufangshi"><center>其他登录方式</center></a>
    <div id="qitadenglufangshitubiao">
        <img src="/static/img/weixinmendian_Wechat_48px_1226623_easyicon.net.ico" title="使用微信登录"  id="qita1" />
        <img src="/static/img/qq_48px_1164430_easyicon.net.ico" title="使用QQ登录" id="qita2" width="40px" height="40px" />
        <img src="/static/img/weibo_48px_1114573_easyicon.net.ico" title="使用微博登录"  id="qita3"  width="40px" height="40px"/>

    </div>

    <a id="hengxuxian"></a>
    <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
        <div class="layadmin-user-login-main">
            <div class="layadmin-user-login-box layadmin-user-login-header">
                <h2>注册</h2>
                <p></p>
            </div>
            <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-cellphone" ></label>
                    <input type="text" name="phone" id="phone" lay-verify="phone" placeholder="手机/邮箱" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <div class="layui-row">
                        <div class="layui-col-xs7">
                            <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>
                            <input type="text" name="vercode" id="vercode" lay-verify="required" placeholder="验证码" class="layui-input">
                        </div>
                        <div class="layui-col-xs5">
                            <div style="margin-left: 10px;">
                                <button type="button" class="layui-btn layui-btn-primary layui-btn-fluid" >获取验证码</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
                    <input type="password" name="password" id="password" lay-verify="password" placeholder="密码" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-repass"></label>
                    <input type="password" name="repass" id="repass" lay-verify="password" placeholder="确认密码" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-nickname"></label>
                    <input type="text" name="account" id="account" lay-verify="account" placeholder="用户名" class="layui-input">
                </div>

                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid">注 册</button>

                </div>

            </div>

        </div>

    </div>

</body>

</html>
<script type="text/javascript">

</script>
