package com.kgc.box;

import com.alibaba.fastjson.JSON;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import java.util.HashMap;
import java.util.Map;

public class weather {

    public static Object  result2() {
        JSONObject resultJsonObject=null;
        String host = "https://iweather.market.alicloudapi.com";
        String path = "/address";
        String method = "GET";
        String appcode = "a64d565fcfea4b779efff26c54298110";
        Map<String, String> headers = new HashMap<String, String>();
        //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
        headers.put("Authorization", "APPCODE " + appcode);
        Map<String, String> querys = new HashMap<String, String>();
        querys.put("area", "北京");
        querys.put("city", "北京");
        querys.put("needday", "1");
        querys.put("prov", "北京");
        Object string1=null;
        try {
            HttpResponse response = HttpUtils.doGet(host, path, method, headers, querys);
           // System.out.println(response.toString());
            //获取response的body
            String string = EntityUtils.toString(response.getEntity());
           string1 = JSON.toJSONString(string);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return string1;
    }





    public static void main(String[] args) {
        System.out.println(result2());
    }
}
