<%--
  Created by IntelliJ IDEA.
  User: 孙阔
  Date: 2020/11/4
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8" >
    <title>天气预报</title>
    <script src="/static/js/jquery-1.8.3.min.js"></script>

</head>
<body>

<div id="mf_weather">
    <script src="w.js"></script>
    <button id="search">天气查询</button>
    <input id="city" type="text" value="tbody">
    <div class="ctn">
        <div id="mufeng">

        </div>
        <div id="future"></div>
    </div>
</div>
<script>
    $(function(){
        /*
        * 1.输入城市名
        * 2，点击的时候发送请求
        * 3.响应成功渲染页面
        * */

        $('#search').on('click',function(){

            var city = $('#city').val()||'北京';
            $citycode=urlencode(city);
            //c82727e986a4f6cfc6ba1984f1f9183a
            //735b50bb1cc6addbf3325bf5ae233c1c
            url='http://v.juhe.cn/weather/index?format=2&cityname='+$citycode+'&key=735b50bb1cc6addbf3325bf5ae233c1c';
            $.ajax({
                url: url,
                dataType: "jsonp",
                type:"get",
                data:{location:city},
                success:function(data){
                    var sk = data.result.sk;
                    var today = data.result.today;
                    var futur = data.result.future;
                    var fut = "日期温度天气风向";
                    $('#mufeng').html("<p>" + '当前:  ' + sk.temp + '℃  , ' + sk.wind_direction + sk.wind_strength + ' , ' + '空气湿度' + sk.humidity + ' , 更新时间' + sk.time + "</p><p style='padding-bottom: 10px;'>" + today.city + ' 今天是:  ' + today.date_y + ' ' + today.week + ' , ' + today.temperature + ' , ' + today.weather + ' , ' + today.wind + "<p></p>");

                    $('#future').html("<p>" + '未来:  ' + futur[0].temperature+ '℃  , ' + futur[0].weather + futur[0].wind + ' , ' + ' , 更新时间' + futur[0].week+futur[0].date + "</p><p style='padding-bottom: 10px;'>" + today.city + "<p></p>");

                }     });

        });
        function urlencode (str) {
            str = (str + '').toString();

            return encodeURIComponent(str).replace(/!/g, '%21').replace(/'/g, '%27').replace(/\(/g, '%28').
            replace(/\)/g, '%29').replace(/\*/g, '%2A').replace(/%20/g, '+');
        }
    })
</script>
</body>
</html>
