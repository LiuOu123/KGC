<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/28
  Time: 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>学生通管理</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="/static/admin/css/admin.css" />
    <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
</head>

<body>
<div class="wrap-container clearfix">
    <div class="column-content-detail">
        <form class="layui-form" action="/toSelectTest">
            <div class="layui-form-item">
                <div class="layui-inline tool-btn">
                    <button class="layui-btn layui-btn-small layui-btn-normal addBtn" data-url="/toAddReleaseTest"><i class="layui-icon">&#xe654;</i></button>
                    <button class="layui-btn layui-btn-small layui-btn-danger delBtn"  data-url="article-add.html"><i class="layui-icon">&#xe640;</i></button>
                    <button class="layui-btn layui-btn-small layui-btn-warm listOrderBtn hidden-xs" data-url="article-add.html"><i class="iconfont">&#xe656;</i></button>
                </div>
                <div class="layui-inline">
                    <input type="text" name="title" placeholder="请输入标题" class="layui-input">
                </div>
                <div class="layui-inline">
                    <select name="states" lay-filter="status">
                        <option value="0">全部</option>
                    </select>
                </div>
                <button class="layui-btn layui-btn-normal" lay-submit="search">搜索</button>
            </div>
        </form>
        <div class="layui-form" id="table-list">
            <table class="layui-table" lay-even lay-skin="nob">
                <colgroup>
                    <col width="50">
                    <col class="hidden-xs" width="50">
                    <col class="hidden-xs" width="300">
                    <col>
                    <col class="hidden-xs" width="150">
                    <col class="hidden-xs" width="150">
                    <col width="80">
                    <col width="150">
                </colgroup>
                <tr>
                        <td>编号</td>
                        <td >试题名称</td>
                        <td >试题类型</td>
                        <td  >试题总分</td>
                        <td>开始答题时间</td>
                        <td>结束答题时间</td>
                        <td>操作</td></tr>
                <tbody class="shiti">

                </tbody>
                </tr>

            </table>
            <div class="page-wrap">

            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        fenye();
    })
    var pageIndex=1;
    var pageSize=5;

    function fenye() {
        var json={
            pageIndex:pageIndex,
            pageSize:pageSize
        }
        $.post("/loSelectPaper",json,function (data) {
            console.log(data.data.list)
            $.each(data.data.list,function (i,v) {
                var tr=$(" <tr style='text-align: center'>\n" +
                    "                            <td>"+v.paperid+"</td>\n" +
                    "                            <td>"+v.papername+"</td>\n" +
                    "                            <td>"+v.papertype+"</td>\n" +
                    /* "                            <td>"+v.method+"</td>\n" +*/
                    "                            <td>"+v.remarks+"</td>\n" +
                    /*"                            <td>"+v.createTime.substring(0,10)+"</td>\n" +*/
                    "                            <td>"+v.startTime+"</td>\n" +
                    "                            <td>"+v.stopTime+"</td>\n" +
                    "                            <td class=\"td-manage\" id='zong"+v.paperid+"'>\n" +
                    "                                \n" +
                    "                            </td>\n" +
                    "                        </tr>\n")
                $(".shiti").append(tr);
                $.post("/chazuo",{id:v.paperid},function (result) {
                    if(result.status==true){

                        var b=$("<button id='da"+v.paperid+"' onclick='zuoti("+v.paperid+")' class='btn layui-btn'>开始答题</button>")
                        $("#zong"+v.paperid).append(b)
                    }else{
                        var b=$("<button id='da"+v.paperid+"' onclick='jiexi("+v.paperid+")' class='btn layui-btn layui-btn-primary'>查看解析</button>")
                        $("#zong"+v.paperid).append(b)
                    }
                },"json")
            })
        },"json")
    }




    function zuoti(id){
        location.href="/stushijuan?id="+id
    }
    function jiexi(id){
        location.href="/chajiexi?id="+id
    }




    layui.use(['laydate', 'form'],
        function() {
            var laydate = layui.laydate;

            //执行一个laydate实例
            laydate.render({
                elem: '#start' //指定元素
            });

            //执行一个laydate实例
            laydate.render({
                elem: '#end' //指定元素
            });
        });


</script>
<script src="/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
