<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/10/3
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>我的消息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="keywords" content="fly,layui,前端社区">
    <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
    <link rel="stylesheet" href="/static/res/layui/css/layui.css">
    <link rel="stylesheet" href="/static/res/css/global.css">
    <script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
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
                    <a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入"
                       class="iconfont icon-qq"></a>
                </li>
                <li class="layui-nav-item layui-hide-xs">
                    <a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入"
                       class="iconfont icon-weibo"></a>
                </li>
            </c:if>

            <c:if test="${username!=null}">
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
                            <%--<cite class="layui-hide-xs">贤心</cite>
                            <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
                            <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
                            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg">--%>
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="../user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
                        <dd><a href="../user/message.html"><i class="iconfont icon-tongzhi"
                                                              style="top: 4px;"></i>我的消息</a></dd>
                        <dd><a href="../user/home.html"><i class="layui-icon"
                                                           style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a>
                        </dd>
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
            <a href="home.html">
                <i class="layui-icon">&#xe609;</i>
                我的主页
            </a>
        </li>
        <li class="layui-nav-item">
            <a href=/static/jsp/luntanyonghuzhongxin.jsp">
                <i class="layui-icon">&#xe612;</i>
                用户中心
            </a>
        </li>
        <li class="layui-nav-item">
            <a href="/jibenshezhiyhxx">
                <i class="layui-icon">&#xe620;</i>
                基本设置
            </a>
        </li>
        <li class="layui-nav-item layui-this">
            <a href="/static/jsp/luntanwodexiaoxi.jsp">
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
        <div class="layui-tab layui-tab-brief" lay-filter="user" id="LAY_msg" style="margin-top: 15px;">
            <button class="layui-btn layui-btn" >全部消息</button>
            <div id="LAY_minemsg" style="margin-top: 10px;">
                <!--<div class="fly-none">您暂时没有最新消息</div>-->
                <ul class="mine-msg" id="zong">
                </ul>
            </div>
        </div>
        <table class="table" width="300" border="1" align="center">
            <tr align="center">
                <td><a href="javascript:void(0)" onclick="shou()">首页</a></td>
                <td><a href="javascript:void(0)" onclick="shang()">上一页</a></td>
                <td class="ye">1/1</td>
                <td><a href="javascript:void(0)" onclick="xia()">下一页</a></td>
                <td><a href="javascript:void(0)" onclick="wei()">尾页</a></td>
            </tr>
        </table>
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


<script type="text/javascript">
    var pageInfo;
    var pageNum = 1;
    var pageSize = 3;
    var mo;

    function shou() {
        if (pageInfo.isFirstPage == false) {
            pageNum = 1;
            aj();
        }
    }

    function shang() {
        if (pageInfo.hasPreviousPage) {
            pageNum = pageInfo.prePage;
            aj();
        }
    }

    function xia() {
        if (pageInfo.hasNextPage) {
            pageNum = pageInfo.nextPage;
            aj();
        }
    }

    function wei() {
        if (pageInfo.isLastPage == false) {
            pageNum = pageInfo.lastPage;
            aj();
        }
    }

    function aj() {
        $(".xiao").remove();
        mo = $(".title").val();
        var json = {
            pageNum: pageNum,
            pageSize: pageSize
        }
        $.ajax({
            url: "/chaWoDeXiaoXi",
            type: "POST",
            data: json,
            dataType: "json",
            success: function (result) {
                $(".ye").text(result.data.pageNum + "/" + result.data.pages);
                pageInfo = result.data;
                $(".xiao").remove();
                $.each(result.data.list, function (index, l) {
                    var $tr = $("<li class='xiao' data-id=\"123\">\n" +
                        "                        <blockquote class=\"layui-elem-quote\">\n" +
                        "                            <a href=\"/jump?username=Absolutely\" target=\"_blank\"><cite>" + l.userInfo.nickname + "</cite></a>给您发送了消息   标题是:<a target=\"_blank\" href=\"/jie/8153.html/page/0/#item-1489505778669\"><cite>" + l.biao + "</cite></a><span class='"+l.xid+"' style='margin-left:300px '></span>\n" +
                        "                        </blockquote>\n" +
                        "                        <p><span>" + date(l.time) + "</span><a href='javascript:void(0)' onclick='cha("+l.shouuserid+","+l.senduserid+","+l.xid+")' class=\" layui-btn \" style='margin-top: -0px'>查询</a>" +
                        "<a href='javascript:void(0)' onclick='delwdxx(" + l.xid + ")' class=\"layui-btn layui-btn-small layui-btn-danger \">删除</a>" +
                        "</p>\n" +

                        "                    </li>");
                    $("#zong").append($tr);
                    if(l.xlei==1){
                        $("."+l.xid+"").text("未读")
                        $("."+l.xid+"").css("color","red");
                    }else{
                        $("."+l.xid+"").text("已读")
                    }
                    /*$(".bian:even").css("background-color", "#87FDFD");*/
                })
            }
        })
    }

    $(function () {
        aj();
    })

    function delwdxx(id) {
        var flag=confirm("确定要删除该数据吗???");
        if(flag){
            $.post("/updateWoDeXiaoXi", {id: id}, function (result) {
                if(result.status==true){
                    alert("删除该数据成功")
                    aj();
                }else{
                    alert("删除该数据失败")
                }
            },"json")
        }
    }

    function cha(shou,fa,xid) {
        var json={
            userid:shou,
            faid:fa,
            xid:xid
        }
        $.post("/chuanzhichaliaotian",json,function (result) {
            layer.open({
                type: 2,
                skin: 'layui-layer-demo', //样式类名
                title: '查看详细消息',
                closeBtn: 0, //不显示关闭按钮
                anim: 2,
                area: ['793px', '550px'],
                shadeClose: true, //开启遮罩关闭
                content: '/static/jsp/chat.jsp'
            });
            aj();
        })
        //xadmin.open('查看作业提交情况', '/static/jsp/denglu.jsp', 1000, 600)
    }
</script>
<script type="text/javascript">
    function date(timei) {
        var weekDay = ["周日", "周一", "周二", "周三", "周四", "周五", "周六"];
        var myDate = new Date(Date.parse(timei));
        var myDay = new Date().getDay();
        var times = timei.substring(0, 10);
        var bo = false;
        for (var i = myDay - 1; i >= 0; i--) {
            var day1 = new Date();
            day1.setTime(day1.getTime() - 24 * 60 * 60 * 1000 * i);
            var s1 = day1.getFullYear() + "-" + (day1.getMonth() + 1) + "-" + day1.getDate();
            if (s1 == times) {
                bo = true;
                break;
            }
        }
        var xingQi;
        if (bo == false) {
            xingQi = timei.substring(0, 10);
        } else if (new Date().getDate() == new Date(timei).getDate()) {
            var hours = parseInt(new Date(timei).getHours()) + 1;
            if (hours > 0 && hours <= 6) {
                xingQi = "凌晨" + timei.substring(11, 16);
                ;
            } else if (hours > 6 && hours <= 10) {
                xingQi = "早上" + timei.substring(11, 16);
                ;
            } else if (hours > 10 && hours <= 14) {
                xingQi = "中午" + timei.substring(11, 16);
                ;
            } else if (hours > 14 && hours <= 19) {
                xingQi = "下午" + timei.substring(11, 16);
                ;
            } else if (hours > 19 && hours <= 23) {
                xingQi = "晚上" + timei.substring(11, 16);
                ;
            }
        } else if (parseInt(new Date().getDate()) - 1 == new Date(timei).getDate()) {
            xingQi = "昨天";
        } else if (bo) {
            xingQi = weekDay[myDate.getDay()];
        }
        return xingQi;
    }
</script>
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
<script>
    layui.use(['laydate', 'form'], function () {
        var laydate = layui.laydate;
        var form = layui.form;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-停用*/
    function member_stop(obj, id) {
        layer.confirm('确认要停用吗？', function (index) {

            if ($(obj).attr('title') == '启用') {

                //发异步把用户状态进行更改
                $(obj).attr('title', '停用')
                $(obj).find('i').html('&#xe62f;');

                $(obj).parents("tr").find(".td-status").find('span').addClass('layui-btn-disabled').html('已停用');
                layer.msg('已停用!', {icon: 5, time: 1000});

            } else {
                $(obj).attr('title', '启用')
                $(obj).find('i').html('&#xe601;');

                $(obj).parents("tr").find(".td-status").find('span').removeClass('layui-btn-disabled').html('已启用');
                layer.msg('已启用!', {icon: 5, time: 1000});
            }

        });
    }

    /*用户-删除*/
    function member_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            //发异步删除数据
            $(obj).parents("tr").remove();
            layer.msg('已删除!', {icon: 1, time: 1000});
        });
    }


    function delAll(argument) {

        var data = tableCheck.getData();

        layer.confirm('确认要删除吗？' + data, function (index) {
            //捉到所有被选中的，发异步进行删除
            layer.msg('删除成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
    }
</script>
<script>var _hmt = _hmt || [];
(function () {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>
</html>