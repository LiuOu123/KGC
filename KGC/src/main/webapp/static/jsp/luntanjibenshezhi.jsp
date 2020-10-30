<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/3
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>帐号设置</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="/static/res/layui/css/layui.css">
    <link rel="stylesheet" href="/static/res/css/global.css">
    <script type="text/javascript" src="/static/js/jquery-1.7.1.min.js"></script>
</head>
<body>

<div class="fly-header layui-bg-black">
    <div class="layui-container">
        <a class="fly-logo" href="/">
            <img src="/static/res/images/logo.png" alt="layui">
        </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item layui-this">
                <a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>
            </li>
            <li class="layui-nav-item">
                <a href="../case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
            </li>
        </ul>

        <ul class="layui-nav fly-nav-user">

            <!-- 未登入的状态 -->
            <c:if test="${sessionScope.username==null}">

                <li class="layui-nav-item">
                    <a class="iconfont icon-touxiang layui-hide-xs" href="user/login.html"></a>
                </li>
                <li class="layui-nav-item">
                    <a href="/static/jsp/denglu.jsp">登入</a>
                </li>
                <li class="layui-nav-item">
                    <a href="/static/jsp/zhuce.jsp">注册</a>
                </li>
                <li class="layui-nav-item layui-hide-xs">
                    <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>
                </li>
                <li class="layui-nav-item layui-hide-xs">
                    <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>
                </li>
            </c:if>
            <c:if test="${sessionScope.username!=null}">
                <!-- 登入后的状态 -->
                <li class="layui-nav-item">
                    <a class="fly-nav-avatar" href="javascript:;">
                        <cite class="layui-hide-xs">
                            <c:if test="${usertype==1}">
                                ${userxinxi.nickname}
                            </c:if>
                            <c:if test="${usertype==2}">
                                ${userxinxi.nickname}
                            </c:if>
                            <c:if test="${usertype==3}">
                                ${userxinxi.nickname}
                                <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i>
                            </c:if>
                        </cite>
                        <img src="/static/luntan/touxiang/${userxinxi.touxiang}" alt="${userxinxi.nickname}">
                            <%--<i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
                            <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
                            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg">--%>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="../user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                        <dd><a href="../user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
                        <dd><a href="../user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
                        <hr style="margin: 5px 0;">
                        <dd><a href="" style="text-align: center;">退出</a></dd>
                    </dl>
                </li>
            </c:if>
        </ul>
    </div>
</div>

<div class="layui-container fly-marginTop fly-user-main">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
        <li class="layui-nav-item">
            <a href="luntanzhuye.jsp">
                <i class="layui-icon">&#xe609;</i>
                我的主页
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="luntanyonghuzhongxin.jsp">
                <i class="layui-icon">&#xe612;</i>
                用户中心
            </a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="luntanjibenshezhi.jsp">
                <i class="layui-icon">&#xe620;</i>
                基本设置
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="luntanwodexiaoxi.jsp">
                <i class="layui-icon">&#xe611;</i>
                我的消息
            </a>
        </li>
    </ul>

    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>

    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon">&#xe602;</i>
    </div>
    <div class="site-mobile-shade"></div>


    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title" id="LAY_mine">
                <li class="layui-this" lay-id="info">我的资料</li>
                <li lay-id="avatar">头像</li>
                <li lay-id="pass">密码</li>
                <li lay-id="bind">帐号绑定</li>
            </ul>
            <div class="layui-tab-content" style="padding: 20px 0;">
                <div class="layui-form layui-form-pane layui-tab-item layui-show">
                    <%--<form method="post">--%>
                        <%--<div class="layui-form-item">
                            <label for="L_email" class="layui-form-label">邮箱</label>
                            <div class="layui-input-inline">
                                <input type="text" id="L_email" name="email" required lay-verify="email" autocomplete="off" value="" class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">如果您在邮箱已激活的情况下，变更了邮箱，需<a href="activate.html" style="font-size: 12px; color: #4f99cf;">重新验证邮箱</a>。</div>
                        </div>--%>
                        <div class="layui-form-item">
                            <label for="nickname" class="layui-form-label">昵称</label>
                            <div class="layui-input-inline">
                                <input type="text" id="nickname" name="nickname" required lay-verify="required" autocomplete="off" value="" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="sex" class="layui-form-label">性别</label>
                            <div class="layui-input-inline">
                                <input type="text" id="sex" name="sex" autocomplete="off" readonly="readonly" value="" class="layui-input">
                            </div>
                            <%--<div class="layui-inline">
                                <div class="layui-input-inline">
                                    <input type="radio" id="sex1" name="sex" value="男" title="男">
                                    <input type="radio" id="sex2" name="sex" value="女" title="女">
                                </div>
                            </div>--%>
                        </div>
                        <div class="layui-form-item">
                            <label for="age" class="layui-form-label">年龄</label>
                            <div class="layui-input-inline">
                                <input type="text" id="age" name="age" autocomplete="off" value="" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="address" class="layui-form-label">地址</label>
                            <div class="layui-input-inline">
                                <input type="text" id="address" name="address" autocomplete="off" value="" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="modification" class="layui-form-label">日期</label>
                            <div class="layui-input-inline">
                                <input type="text" id="modification" name="modification" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="score" class="layui-form-label">成绩</label>
                            <div class="layui-input-inline">
                                <input type="text" id="score" name="score" autocomplete="off"  class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item layui-form-text">
                            <label for="qianming" class="layui-form-label">签名</label>
                            <div class="layui-input-block">
                                <textarea placeholder="随便写些什么刷下存在感" id="qianming"  name="qianming" autocomplete="off" class="layui-textarea" style="height: 80px;"></textarea>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" key="set-mine" onclick="update()" lay-filter="*" lay-submit>确认修改</button>
                        </div>
                </div>
                <script type="text/javascript">

                    /*function update() {
                        var json={
                            nickname:$("#nickname").val(),
                            sex:$("#sex").val(),
                            age:$("#age").val(),
                            address:$("#address").val(),
                            modification:$("#modification").val(),
                            score:$("#score").val(),
                            qianming:$("#qianming").val(),
                        }
                        $.post("/jibenshezhiyhxxupdate",json,function (result) {
                            if(result.status=="true"){
                                location.href="/luntan";
                            }
                        },"json")
                    }*/


                   $(function () {
                       var id=${sessionScope.userid}
                           alert(id);
                           //发送请求
                           $.post("/jibenshezhiyhxx",{id:id}, function (result) {
                               $("#nickname").val(result.data.nickname);
                               // alert(result.data.sex);
                               /*if(result.data.sex=="男"){
                                   $("#sex1").attr("checked","checked");
                               }else if(result.data.sex=="女"){
                                   $("#sex2").attr("checked","checked");
                               }*/
                               /*$("#sex1").attr("checked",result.data.sex == '男' ? true : false);
                               $("#sex2").attr("checked",result.data.sex == '女' ? true : false);*/
                               $("#sex").val(result.data.sex);
                               $("#age").val(result.data.age);
                               $("#address").val(result.data.address);
                               $("#modification").val(result.data.modification);
                               $("#score").val(result.data.score);
                               $("#qianming").val(result.data.qianming);

                           },"json")
                   })



                </script>
                <div class="layui-form layui-form-pane layui-tab-item">
                    <div class="layui-form-item">
                        <div class="avatar-add">
                            <p>建议尺寸168*168，支持jpg、png、gif，最大不能超过50KB</p>
                            <%--<button type="button" class="layui-btn upload-img">
                                <i class="layui-icon">&#xe67c;</i>上传头像
                            </button>--%>
                            <form method="post" enctype="multipart/form-data" action="/doTestUploadFile">
                                <input type="file" name="test_pic">
                                <input type="hidden" name="id" value="${userid}">
                                <input type="submit" value="上传">
                            </form>
                            <img src="/static/luntan/touxiang/${userxinxi.touxiang}">
                            <span class="loading"></span>
                        </div>
                    </div>
                </div>

                <div class="layui-form layui-form-pane layui-tab-item">
                    <%--<form action="/user/repass" method="post">--%>
                        <div class="layui-form-item">
                            <label for="L_nowpass" class="layui-form-label">当前密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="L_nowpass" name="nowpass" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_pass" class="layui-form-label">新密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="L_pass" name="pass" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-form-mid layui-word-aux">6到16个字符</div>
                        </div>
                        <div class="layui-form-item">
                            <label for="L_repass" class="layui-form-label">确认密码</label>
                            <div class="layui-input-inline">
                                <input type="password" id="L_repass" name="repass" required lay-verify="required" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <button class="layui-btn" key="set-mine" lay-filter="*" lay-submit>确认修改</button>
                        </div>
                    <%--</form>--%>
                </div>

                <div class="layui-form layui-form-pane layui-tab-item">
                    <ul class="app-bind">
                        <li class="fly-msg app-havebind">
                            <i class="iconfont icon-qq"></i>
                            <span>已成功绑定，您可以使用QQ帐号直接登录Fly社区，当然，您也可以</span>
                            <a href="javascript:;" class="acc-unbind" type="qq_id">解除绑定</a>

                            <!-- <a href="" onclick="layer.msg('正在绑定微博QQ', {icon:16, shade: 0.1, time:0})" class="acc-bind" type="qq_id">立即绑定</a>
                            <span>，即可使用QQ帐号登录Fly社区</span> -->
                        </li>
                        <li class="fly-msg">
                            <i class="iconfont icon-weibo"></i>
                            <!-- <span>已成功绑定，您可以使用微博直接登录Fly社区，当然，您也可以</span>
                            <a href="javascript:;" class="acc-unbind" type="weibo_id">解除绑定</a> -->

                            <a href="" class="acc-weibo" type="weibo_id"  onclick="layer.msg('正在绑定微博', {icon:16, shade: 0.1, time:0})" >立即绑定</a>
                            <span>，即可使用微博帐号登录Fly社区</span>
                        </li>
                        <li>
                            <div class="layui-form-item">
                                <label for="L_email" class="layui-form-label">邮箱</label>
                                <div class="layui-input-inline">
                                    <input type="text" id="L_email" name="email" required lay-verify="email" autocomplete="off" value="" class="layui-input">
                                </div>
                                <div class="layui-form-mid layui-word-aux">如果您在邮箱已激活的情况下，变更了邮箱，需<a href="activate.html" style="font-size: 12px; color: #4f99cf;">重新验证邮箱</a>。</div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>
</div>

<div class="fly-footer">
    <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
    <p>
        <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
        <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
        <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
    </p>
</div>

<script src="/static/res/layui/layui.js"></script>
<script>
    layui.cache.page = 'user';
    layui.cache.user = {
        username: '游客'
        ,uid: -1
        ,avatar: '/static/res/images/avatar/00.jpg'
        ,experience: 83
        ,sex: '男'
    };
    layui.config({
        version: "2.0.0"
        ,base: '/static/res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

</body>
</html>