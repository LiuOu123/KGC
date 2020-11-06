<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/1
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课工场论坛</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="/static/res/layui/css/layui.css">
    <link rel="stylesheet" href="/static/res/css/global.css">
    <script type="text/javascript" src="/static/res/js/jquery-3.4.1.min.js"></script>
</head>
<body>

<div class="fly-header layui-bg-black">
    <div class="layui-container">
        <a class="fly-logo" href="/">
            <img src="static/res/images/logo.png" alt="layui">
        </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item layui-this">
                <a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>
            </li>
            <li class="layui-nav-item">
                <a href="case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>
            </li>
            <li class="layui-nav-item">
                <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
            </li>
        </ul>

        <ul class="layui-nav fly-nav-user" id="weideng">
            <c:if test="${userid == null}">
                <!-- 未登入的状态 -->
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
                    <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入"
                       class="iconfont icon-qq"></a>
                </li>
                <li class="layui-nav-item layui-hide-xs">
                    <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入"
                       class="iconfont icon-weibo"></a>
                </li>
            </c:if>
            <!-- 登入后的状态 -->
            <c:if test="${userid != null}">
                <li class="layui-nav-item">
                    <a class="fly-nav-avatar" href="javascript:;">
                        <cite class="layui-hide-xs" id="nicheng">
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
                        <%--<i class="iconfont icon-renzheng layui-hide-xs" title="" id="gexingqianming">${userxinxi.qianming}</i>--%>
                        <%--<i class="layui-badge fly-badge-vip layui-hide-xs" id="vip"></i>--%>
                        <img src="/static/luntan/touxiang/${userxinxi.touxiang}" alt="${userxinxi.nickname}">
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="/jibenshezhiyhxx"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                        <dd><a href="/static/jsp/luntanwodexiaoxi.jsp"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a>
                        </dd>
                        <dd><a href="user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a>
                        </dd>
                        <hr style="margin: 5px 0;">
                        <dd><a href="/user/logout/" style="text-align: center;">退出</a></dd>
                    </dl>
            </c:if>
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        //alert(${userxinxi.nickname})
        /*var id=${userid};
        alert(id);
        if(userid==null){
            $("#denglu").hide();
            $("#weideng").show();
        }else{
            $("#denglu").show();
            $("#weideng").hide();
            alert("2")
            var json={
                id:id
            }
            $.post("/dengluchaxinxi",json,function (data) {
                alert(data.nickname);
                $("#nicheng").text(data.nickname);
                $("#gexingqianming").val("title",data.qianming);

            },"json")
        }*/
    })
</script>
<div class="fly-panel fly-column">
    <div class="layui-container">
        <ul class="layui-clear">
            <li class="layui-hide-xs layui-this"><a href="/">首页</a></li>
            <li><a href="/luntan">综合</a></li>
            <li><a href="/luntanweijie?weijie=0">未结<%--<span class="layui-badge-dot"></span>--%></a></li>
            <li><a href="/luntanweijie?weijie=1">已结</a></li>
            <li><a href="/jingtie">精帖</a></li>
            <li><a href="/zuixin">按最新</a></li>
            <li><a href="/reyi">按热议</a></li>
            <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li>

            <!-- 用户登入后显示 -->
            <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html">我发表的贴</a></li>
            <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html#collection">我收藏的贴</a>
            </li>
        </ul>

        <div class="fly-column-right layui-hide-xs">
            <span class="fly-search"><i class="layui-icon"></i></span>
            <a href="jie/add.html" class="layui-btn">发表新帖</a>
        </div>
        <div class="layui-hide-sm layui-show-xs-block"
             style="margin-top: -10px; padding-bottom: 10px; text-align: center;">
            <a href="jie/add.html" class="layui-btn">发表新帖</a>
        </div>
    </div>
</div>

<div class="layui-container">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md8">
            <div class="fly-panel">
                <div class="fly-panel-title fly-filter">
                    <a>置顶</a>
                    <a href="#signin" class="layui-hide-sm layui-show-xs-block fly-right" id="LAY_goSignin"
                       style="color: #FF5722;">去签到</a>
                </div>
                <ul class="fly-list">
                    <%--<li>
                        <a href="user/home.html" class="fly-avatar">
                            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg"
                                 alt="贤心">
                        </a>
                        <h2>
                            <a class="layui-badge">动态</a>
                            <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                        </h2>
                        <div class="fly-list-info">
                            <a href="user/home.html" link>
                                <cite>贤心</cite>
                                <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                <i class="layui-badge fly-badge-vip">VIP3</i>
                            </a>
                            <span>刚刚</span>

                            <span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i class="iconfont icon-kiss"></i> 60</span>
                            <span class="layui-badge fly-badge-accept layui-hide-xs">已结</span>
                            <span class="fly-list-nums">
                <i class="iconfont icon-pinglun1" title="回答"></i> 66
              </span>
                        </div>
                        <div class="fly-list-badge">
                            <!--
                            <span class="layui-badge layui-bg-black">置顶</span>
                            <span class="layui-badge layui-bg-red">精帖</span>
                            -->
                        </div>
                    </li>--%>
                        <c:forEach items="${zhiding}" var="l">
                            <li>
                                <a href="user/home.html" class="fly-avatar">
                                    <img src="/static/luntan/touxiang/${l.userInfo.touxiang}"
                                         alt="${l.userInfo.nickname}">
                                </a>
                                <h2>
                                    <a class="layui-badge">${l.lei}</a>
                                    <a href="/luntanxiangxi{title}?title=${l.title}">${l.title}</a>
                                </h2>
                                <div class="fly-list-info">
                                    <a href="user/home.html" link>
                                        <cite>
                                            <c:if test="${l.userInfo.utype==1}">
                                                ${l.userInfo.nickname}
                                            </c:if>
                                            <c:if test="${l.userInfo.utype==2}">
                                                ${l.userInfo.nickname}
                                            </c:if>
                                            <c:if test="${l.userInfo.utype==3}">
                                                ${l.userInfo.nickname}
                                                <i class="iconfont icon-renzheng" title="认证信息：{{ rows.user.approve }}"></i>
                                            </c:if>
                                        </cite>
                                        <!--
                                        <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                        <i class="layui-badge fly-badge-vip">VIP3</i>
                                        -->
                                    </a>
                                    <span>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${l.time}" type="both"/>
                                </span>

                                        <%--<span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i
                                                class="iconfont icon-kiss"></i> 60</span>--%>
                                    <c:if test="${l.wanjie==1}">
                                        <span class="layui-badge fly-badge-accept layui-hide-xs">已完结</span>
                                    </c:if>
                                    <span class="fly-list-nums">
                <i class="iconfont icon-pinglun1" title="回答"></i> ${l.liulanliang}
              </span>
                                </div>
                                <div class="fly-list-badge">
                                    <c:if test="${l.jingtie==1}">
                                        <span class="layui-badge layui-bg-red">精帖</span>
                                    </c:if>
                                </div>
                            </li>
                        </c:forEach>
                </ul>
            </div>

            <div class="fly-panel" style="margin-bottom: 0;">

                <div class="fly-panel-title fly-filter">
                    <a href="/luntan" class="layui-this">综合</a>
                    <span class="fly-mid"></span>
                    <a href="/luntan?weijie=0">未结</a>
                    <span class="fly-mid"></span>
                    <a href="/luntan?weijie=1">已结</a>
                    <span class="fly-mid"></span>
                    <a href="/luntan?jingtie=1">精贴</a>
                    <span class="fly-filter-right layui-hide-xs">
            <a href="/zuixin" class="layui-this">按最新</a>
            <span class="fly-mid"></span>
            <a href="/reyi">按热议</a>
          </span>
                </div>
                <ul class="fly-list">

                    <%--读取普通帖子--%>
                    <c:forEach items="${pageInfo.list}" var="l">
                        <li>
                            <a href="user/home.html" class="fly-avatar">
                                <img src="/static/luntan/touxiang/${l.userInfo.touxiang}"
                                     alt="${l.userInfo.nickname}">
                            </a>
                            <h2>
                                <a class="layui-badge">${l.lei}</a>
                                <a href="/luntanxiangxi{title}?title=${l.title}">${l.title}</a>
                            </h2>
                            <div class="fly-list-info">
                                <a href="user/home.html" link>
                                    <cite>${l.userInfo.nickname}</cite>
                                    <!--
                                    <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                                    <i class="layui-badge fly-badge-vip">VIP3</i>
                                    -->
                                </a>
                                <span>
                                <fmt:formatDate pattern="yyyy-MM-dd" value="${l.time}" type="both"/>
                                </span>

                                    <%--<span class="fly-list-kiss layui-hide-xs" title="悬赏飞吻"><i
                                            class="iconfont icon-kiss"></i> 60</span>--%>
                                <c:if test="${l.wanjie==1}">
                                    <span class="layui-badge fly-badge-accept layui-hide-xs">已完结</span>
                                </c:if>
                                <c:if test="${l.wanjie==0}">
                                    <span class="layui-badge fly-badge-accept layui-hide-xs">未完结</span>
                                </c:if>
                                <span class="fly-list-nums">
                <i class="iconfont icon-pinglun1" title="回答"></i> ${l.liulanliang}
                                </span>
                            </div>
                            <div class="fly-list-badge">
                                <c:if test="${l.jingtie==1}">
                                    <span class="layui-badge layui-bg-red">精帖</span>
                                </c:if>
                            </div>
                        </li>
                    </c:forEach>

                </ul>
                <div style="text-align: center">
                    <%--<div class="laypage-main">
                        <a href="jie/index.html" class="laypage-next">更多求解</a>
                    </div>--%>
                    <div style="text-align: center;">
                        <div class="laypage-main">
                            <a href="/luntan?jingtie=${jingtie}&pageNumStr=${pageInfo.firstPage}&weijie=${weijie}" class="laypage-frist"
                               title="首页">首页</a>
                            <c:if test="${pageInfo.hasPreviousPage}">
                                <a class="laypage-next" href="/luntan?jingtie=${jingtie}&pageNumStr=${pageInfo.prePage}&weijie=${weijie}">上一页</a>
                            </c:if>
                            <c:forEach items="${pageInfo.navigatepageNums}" var="i">
                                <a class="mulu" id="${i}" onclick="bian(${i})"
                                   href="/luntan?jingtie=${jingtie}&pageNumStr=${i}&weijie=${weijie}">${i}</a>
                            </c:forEach>
                            <c:if test="${pageInfo.hasNextPage}">
                                <a class="laypage-next" href="/luntan?jingtie=${jingtie}&pageNumStr=${pageInfo.nextPage}&weijie=${weijie}">下一页</a>
                            </c:if>
                            <a href="/luntan?jingtie=${jingtie}&pageNumStr=${pageInfo.lastPage}&weijie=${weijie}" class="laypage-frist" title="尾页">尾页</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="layui-col-md4">

            <div class="fly-panel">
                <h3 class="fly-panel-title">热门帖子</h3>
                <ul class="fly-panel-main fly-list-static" id="remen">
                    <%--<li>
                        <a href="http://fly.layui.com/jie/4281/" target="_blank">layui 的 GitHub 及 Gitee (码云)
                            仓库，欢迎Star</a>
                    </li>--%>
                </ul>
            </div>

            <script type="text/javascript">
                $(function () {
                    //发送请求
                    $.post("/remen", function (result) {
                        $.each(result.data.list, function (index, luntan) {
                            console.log(luntan.title)
                            var $li = $("<li><a  href='' target='_blank'>" + luntan.title + "</a></li>");
                            $("#remen").append($li);
                        })
                    }, "json")
                })
            </script>
            <%-- <div class="fly-panel fly-signin">
                 <div class="fly-panel-title">
                     签到
                     <i class="fly-mid"></i>
                     <a href="javascript:;" class="fly-link" id="LAY_signinHelp">说明</a>
                     <i class="fly-mid"></i>
                     <a href="javascript:;" class="fly-link" id="LAY_signinTop">活跃榜<span class="layui-badge-dot"></span></a>
                     <span class="fly-signin-days">已连续签到<cite>16</cite>天</span>
                 </div>
                 <div class="fly-panel-main fly-signin-main">
                     <button class="layui-btn layui-btn-danger" id="LAY_signin">今日签到</button>
                     <span>可获得<cite>5</cite>飞吻</span>

                     <!-- 已签到状态 -->
                     <!--
                     <button class="layui-btn layui-btn-disabled">今日已签到</button>
                     <span>获得了<cite>20</cite>飞吻</span>
                     -->
                 </div>
             </div>
 --%>
            <div class="fly-panel fly-rank fly-rank-reply" id="LAY_replyRank">
                <h3 class="fly-panel-title">回贴周榜</h3>
                <dl id="huitie">
                    <!--<i class="layui-icon fly-loading">&#xe63d;</i>-->
                    <%--<dd>
                        <a href="user/home.html">
                            <img src="h"><cite>贤心</cite><i>106次回答</i>
                        </a>
                    </dd>--%>
                </dl>
            </div>
            <script type="text/javascript">
                $(function () {
                    $.post("/huitiepaihang", function (result) {
                        $.each(result.data, function (index, l) {
                            var $dd = $("<dd><a><img src='/static/luntan/touxiang/" + l.userInfo.touxiang + "'><cite>" + l.userInfo.nickname + "</cite><i>" + l.count + "次回帖</i></a></dd>")
                            $("#huitie").append($dd);
                        })
                    }, "json")
                })
            </script>
            <%--<dl class="fly-panel fly-list-one">
                <dt class="fly-panel-title">本周热议</dt>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>
                <dd>
                    <a href="jie/detail.html">基于 layui 的极简社区页面模版</a>
                    <span><i class="iconfont icon-pinglun1"></i> 16</span>
                </dd>

                <!-- 无数据时 -->
                <!--
                <div class="fly-none">没有相关数据</div>
                -->
            </dl>--%>

            <div class="fly-panel">
                <div class="fly-panel-title">
                    公告
                </div>
                <div class="fly-panel-main">
                    <a href="http://layim.layui.com/?from=fly" target="_blank" class="fly-zanzhu"
                       time-limit="2017.09.25-2099.01.01" style="background-color: #5FB878;">大家天天都要开开心心的呀~~~</a>
                </div>
            </div>

            <div class="fly-panel fly-link">
                <h3 class="fly-panel-title">友情链接</h3>
                <dl class="fly-panel-main">
                    <dd><a href="http://www.layui.com/" target="_blank">layui</a>
                    <dd>
                    <dd><a href="http://layim.layui.com/" target="_blank">WebIM</a>
                    <dd>
                    <dd><a href="http://layer.layui.com/" target="_blank">layer</a>
                    <dd>
                    <dd><a href="http://www.layui.com/laydate/" target="_blank">layDate</a>
                    <dd>
                    <dd>
                        <a href="mailto:xianxin@layui-inc.com?subject=%E7%94%B3%E8%AF%B7Fly%E7%A4%BE%E5%8C%BA%E5%8F%8B%E9%93%BE"
                           class="fly-link">申请友链</a>
                    <dd>
                </dl>
            </div>

        </div>
    </div>
</div>

<div class="fly-footer">
    <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/"
                                                                                target="_blank">layui.com 出品</a></p>
    <p>
        <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
        <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
        <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
    </p>
</div>

<script src="/static/res/layui/layui.js"></script>
<script>
    layui.cache.page = '';
    layui.cache.user = {
        username: '游客'
        , uid: -1
        , avatar: '/static/res/images/avatar/00.jpg'
        , experience: 83
        , sex: '男'
    };
    layui.config({
        version: "3.0.0"
        , base: '/static/res/mods/' //这里实际使用时，建议改成绝对路径
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script>

</body>
</html>
<script type="text/javascript" src="/static/res/js/jquery-3.4.1.min.js"></script>
