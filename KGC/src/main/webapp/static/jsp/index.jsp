<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/23
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/three.min.js"></script>
    <title>Title</title>
    <style type="text/css">
        .input-radio {
            margin: 1em 0;
            display:inline-block;
        }
        .input-radio input[type="radio"] {
            opacity: 0;
        }
        .input-radio input[type="radio"] + label{
            position: relative;
            cursor: pointer;
        }
        .input-radio input[type="radio"] + label::before{
            content: '';
            position: absolute;
            left: -24px;
            border-radius: 50%;
            width: 18px;
            height: 18px;
            border: 1px solid #999;
        }
        .input-radio input[type="radio"] + label::after{
            content: '';
            position: absolute;
            left: -20px;
            top: 4px;
            border-radius: 50%;
            width: 12px;
            height: 12px;
        }
        .input-radio input[type="radio"]:checked + label::before{
            border: 1px solid #24B7E5;
            box-shadow: 0 0 6px #24B7E5;
            transition: all .3s;
        }
        .input-radio input[type="radio"]:checked + label::after{
            background:#24B7E5;
            transition: all .5s;
        }
    </style>
</head>
<body>

<h1>欢迎${username}</h1>
<input type="button" value="返回" onclick="back()">
<script type="text/javascript">
    function back() {
        location.href="javascript:history.back()";
    }
</script>

<%--<h2>你最喜欢的水果</h2>
<div class="input-radio">
    <!-- 选中状态添加 checked 属性 -->
    <input id="apple" type="radio" name="fruits" checked />
    <label for="apple">苹果</label>
</div>
<div class="input-radio">
    <input id="banana" type="radio" name="fruits" />
    <label for="banana">香蕉</label>
</div>
<div class="input-radio">
    <input id="orange" type="radio" name="fruits" />
    <label for="orange">橙子</label>
</div>
<div class="input-radio">
    <input id="strawberry" type="radio" name="fruits" />
    <label for="strawberry">草莓</label>
</div>--%>
</body>
</html>
