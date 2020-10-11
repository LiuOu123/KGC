<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/3
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户中心</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">

    <link rel="stylesheet" href="/static/res/layui/css/layui.css">
    <link rel="stylesheet" href="/static/res/css/global.css">
    <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
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
            <!-- 登入后的状态 -->
            <li class="layui-nav-item">
                <a class="fly-nav-avatar" href="javascript:;">
                    <cite class="layui-hide-xs">贤心</cite>
                    <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
                    <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
                    <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg">
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="../user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                    <dd><a href="../user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a>
                    </dd>
                    <dd><a href="../user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a>
                    </dd>
                    <hr style="margin: 5px 0;">
                    <dd><a href="" style="text-align: center;">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>

<div class="layui-container fly-marginTop fly-user-main">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="user">
        <li class="layui-nav-item">
            <a href="home.html">
                <i class="layui-icon">&#xe609;</i>
                我的主页
            </a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="index.html">
                <i class="layui-icon">&#xe612;</i>
                用户中心
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="set.html">
                <i class="layui-icon">&#xe620;</i>
                基本设置
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="message.html">
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
        <!--
        <div class="fly-msg" style="margin-top: 15px;">
          您的邮箱尚未验证，这比较影响您的帐号安全，<a href="activate.html">立即去激活？</a>
        </div>
        -->
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title" id="LAY_mine">
                <li data-type="mine-jie" lay-id="index" class="layui-this">我发的帖（<span id="fatiesize"></span>）</li>
                <li data-type="collection" data-url="/collection/find/" lay-id="collection">我收藏的帖（<span
                        id="shoucangsize"></span>）
                </li>
            </ul>
            <div class="layui-tab-content" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <ul class="mine-view jie-row" id="fatie">
                        <%--<li>
                            <a class="jie-title" href="../jie/detail.html" target="_blank">基于 layui 的极简社区页面模版</a>
                            <i>2017/3/14 上午8:30:00</i>
                            <a class="mine-edit" href="/jie/edit/8116">编辑</a>
                            <em>661阅/10答</em>
                        </li>--%>
                    </ul>
                    <div id="LAY_page"></div>
                </div>
                <div class="layui-tab-item">
                    <ul class="mine-view jie-row" id="shoucang">
                        <%--<li>
                            <a class="jie-title" href="../jie/detail.html" target="_blank">基于 layui 的极简社区页面模版</a>
                            <i>收藏于23小时前</i>  </li>--%>
                    </ul>
                    <div id="LAY_page1"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        fatie();
        shoucang();
    })

    function fatie() {
        var json = {
            id:${userid}
        }
        $("#fatie li").remove();
        $.post("/zhuyefatie", json, function (result) {
            $.each(result.data.list, function (index, pageInfo) {
                var li = $("<li><a class='jie-title' href='' target='_blank\'>" + pageInfo.title + "</a><i>" + date(pageInfo.time) + "</i><a class='mine-edit' onclick='fatiedel(" + pageInfo.id + ")' href='javaScript:void(0)'>删除</a><em>" + pageInfo.liulanliang + "热度</em> </li>")
                $("#fatie").append(li);
            })
            $("#fatiesize").text(result.data.list.length);
        }, "json")
    }

    function fatiedel(id) {
        var flag=confirm("您确定要删除吗?");
        if(flag==false){
            return;
        }
        var json = {
            id: id
        }
        $.post("/delfatie",json,function (result) {
           console.log(result)
            result;
           if(result.status=="true"){
               alert("删除成功");
               fatie();
           }else{
               alert("删除失败")
           }
        },"json")
    }

    function date(timei) {
        var weekDay = ["周日", "周一", "周二", "周三", "周四", "周五", "周六"];
        var myDate = new Date(Date.parse(timei));
        var myDay=new Date().getDay();
        var times=timei.substring(0,10);
        var bo=false;
        for (var i=myDay-1;i>0;i--){
            var day1 = new Date();
            day1.setTime(day1.getTime()-24*60*60*1000*i);
            var s1 = day1.getFullYear()+"-" + (day1.getMonth()+1) + "-0" + day1.getDate();
            if (s1==times){
                bo=true;
                break;
            }
        }
        var xingQi;
        if (parseInt(new Date().getDate())-1==new Date(timei).getDate()){
            xingQi="昨天";
        }else if(new Date().getDate()==new Date(timei).getDate()){
            var hours=parseInt(new Date(timei).getHours())+1;
            if (hours>0&&hours<=6){
                xingQi="凌晨"+timei.substring(11,16);;
            }else if(hours>6&&hours<=10){
                xingQi="早上"+timei.substring(11,16);;
            }else if(hours>10&&hours<=14){
                xingQi="中午"+timei.substring(11,16);;
            }else if(hours>14&&hours<=19){
                xingQi="下午"+timei.substring(11,16);;
            }else if(hours>19&&hours<=23){
                xingQi="晚上"+timei.substring(11,16);;
            }
        }else if(bo==false){
            xingQi=timei.substring(0,10);
        } else if(bo){

            xingQi=weekDay[myDate.getDay()];
        }
        return xingQi;
    }

    function shoucang() {
        var json = {
            id:${userid}
        }
        $("#shoucang li").remove();
        $.post("/yonghuchoucangtiezi", json, function (result) {
            $.each(result.data, function (index, pageInfo) {
                var li = $("<li><a class='jie-title' href='' target='_blank\'>" + pageInfo.lunTan.title + "</a><i>" +pageInfo.lunTan.liulanliang+ "热度</i><a class='mine-edit' onclick='delshoucang("+pageInfo.id+")' href='javaScript:void(0)'>删除</a><em>收藏于" + date(pageInfo.time) + "</em> </li>")
                $("#shoucang").append(li);
            })
            $("#shoucangsize").text(result.data.length);
        }, "json")
    }
    function delshoucang(id) {
        var flag=confirm("您确定要删除吗?");
        if(flag==false){
            return;
        }
        var json = {
            id: id
        }
        $.post("/updateshoucang",json,function (result) {
            console.log(result)
            result;
            if(result.status=="true"){
                alert("删除成功");
                shoucang();
            }else{
                alert("删除失败")
            }
        },"json")
    }
</script>
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
    layui.cache.page = 'user';
    layui.cache.user = {
        username: '游客'
        , uid: -1
        , avatar: '/static/res/images/avatar/00.jpg'
        , experience: 83
        , sex: '男'
    };
    layui.config({
        version: "3.0.0"
        , base: '/static/res/mods/'
    }).extend({
        fly: 'index'
    }).use('fly');
</script>

</body>
</html>