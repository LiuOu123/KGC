<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/11/1
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>聊天</title>
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
    <link href="/static/css/chatstyle.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/static/js/jquery-3.1.1.min.js"></script>
</head>
<body>

<div class="aui-body-box">
    <div id="messageContent">
    </div>
    <div class="aui-user-img">
        <img src="/static/luntan/touxiang/${userxinxi.touxiang}" width="35px" height="35px" alt="${userxinxi.nickname}">
        <span id="nickname">${userxinxi.nickname}</span>
    </div>
    <input type="text" id="text"  placeholder="">
    <input type="button" onclick="add()" id="btn1" value="发送" placeholder="">
</div>
<script type="text/javascript">
    var ke;
    $(function () {
        cha()
    })
    function add() {
        var chat=$("#text").val();
        alert(chat)
        if(chat==""){
            alert("请输入聊天内容")
        }else{
            var json={
                senduserid:${userid},
                shouuserid:ke,
                chat:chat
            }
            $.post("/addchat",json,function (result) {
                if (result.status==true){
                    alert("成功")
                    cha()
                }else{
                    alert("失败")
                }
            },"json")
        }
    }
    function cha() {
      $.post("/chaliaotian",function (result) {
          $(".xiao").remove();
         $.each(result.data,function (index,s) {
             if(s.senduserid==${userid}){
                 var p=$("<p class=\"aui-right xiao\"><img src = \"/static/luntan/touxiang/"+s.userInfo.touxiang+" \" alt ="+s.userInfo.nickname+" \""+s.userInfo.nickname+"\" > <span>:  "+s.userInfo.nickname+" </span><span>"+s.chat+"</span>  </p>");
                 $("#messageContent").append(p)
             }else{
                 var p=$("<p class='xiao'><img src = \"/static/luntan/touxiang/"+s.userInfo.touxiang+" \" alt = \""+s.userInfo.nickname+"\" > <span> "+s.userInfo.nickname+" : </span><span>"+s.chat+"</span>  </p>")
                 $("#messageContent").append(p)
                 ke=s.senduserid;
             }
         })
      },"json")
    }
</script>
</body>
</html>