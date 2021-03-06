<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/27
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>学生通管理</title>
    <link rel="stylesheet" type="text/css" href="/static/admin/layui/css/layui.css" />
    <link rel="stylesheet" type="text/css" href="/static/admin/css/admin.css" />
</head>

<body>
<div class="page-content-wrap clearfix">
    <form action="/updatedoAddReleaseTest" class="layui-form" enctype="multipart/form-data" method="post">
        <div class="layui-tab">
            <ul class="layui-tab-title">
                <%--<li><a href="/toReleaseTest">发布测试</a></li>--%>
                <li class="layui-this">修改作业</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item"></div>
                <div class="layui-tab-item layui-show">
                    <div class="layui-form-item">
                        <label class="layui-form-label">测试标题：</label>
                        <div class="layui-input-block">
                            <input type="hidden" value="${list.rid}" name="rid">
                            <input type="text" name="reltitle" required lay-verify="required" value="${list.reltitle}" placeholder="请输入标题名称" class="layui-input">
                        </div>
                    </div>
                 <%--   <div class="layui-form-item">
                        <label class="layui-form-label">选择班级：</label>
                        <div class="layui-input-block">
                            <select name="gradername" lay-verify="required">
                                <c:forEach items="${requestScope.gradeList}" var="item">
                                    <option value="${item.gradeid}">${item.gradename}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>--%>
                    <div class="layui-form-item">
                        <label class="layui-form-label">图像上传：</label>
                        <img src="/static/images/uploadfiles/${list.img}" style="width: 50px;height: 50px;">
                        <div class="layui-input-block">
                            <input type="file" name="text_upload"><%--class="layui-upload-file"--%>
                        </div>
                    </div>

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">单页内容：</label>
                        <div class="layui-input-block">
                            <textarea class="layui-textarea layui-hide"   name="relnei" lay-verify="content" id="LAY_demo_editor"></textarea>
                        </div>
                    </div>
                </div>
                <div class="layui-tab-item">

                </div>
            </div>
        </div>
        <div class="layui-form-item" style="padding-left: 10px;">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo">立即修改</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    document.getElementById("LAY_demo_editor").value="${list.relnei}"
</script>
<script type="text/javascript">
    var SCOPE = {
        static: '/static',
        index: '/admin/category/index.html',
        add: 'add.html',
        save: '/admin/category/save.html',
        edit: 'add.html',
        updateEdit: '/admin/category/updateedit.html',
        status: '/admin/category/updatestatus.html',
        del: '/admin/category/del.html',
        delAll: '/admin/category/deleteall.html',
        listOrderAll: '/admin/category/listorderall.html'
    }
</script>
<script src="/static/admin/layui/layui.js" type="text/javascript" charset="utf-8"></script>
<script src="/static/admin/js/common.js" type="text/javascript" charset="utf-8"></script>
<script>

    layui.use(['form', 'jquery', 'laydate', 'layer', 'laypage', 'dialog', 'element', 'upload', 'layedit'], function() {
        var form = layui.form(),
            layer = layui.layer,
            $ = layui.jquery,
            laypage = layui.laypage,
            laydate = layui.laydate,
            layedit = layui.layedit,
            element = layui.element(),
            dialog = layui.dialog;

        //获取当前iframe的name值
        var iframeObj = $(window.frameElement).attr('name');
        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor', {
            tool: ['strong' //加粗
                , 'italic' //斜体
                , 'underline' //下划线
                , 'del' //删除线
                , '|' //分割线
                , 'left' //左对齐
                , 'center' //居中对齐
                , 'right' //右对齐
                , 'link' //超链接
                , 'unlink' //清除链接
                , 'image' //插入图片
            ],
            height: 100
        })
        //全选
        form.on('checkbox(allChoose)', function(data) {
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            child.each(function(index, item) {
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });
        form.render();

        /*layui.upload({
            url: '上传接口url',
            success: function(res) {
                console.log(res); //上传成功返回值，必须为json格式
            }
        });*/
    });
</script>
</body>

</html>
