package com.kgc.box;

import org.apache.http.HttpResponse;

import java.util.HashMap;
import java.util.Map;

public class demo {
    public static void main(String[] args) {
        String host = "https://tysbgpu.market.alicloudapi.com";
        String path = "/api/predict/ocr_general";
        String method = "POST";
        String appcode = "a64d565fcfea4b779efff26c54298110";
        Map<String, String> headers = new HashMap<String, String>();
        //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
        headers.put("Authorization", "APPCODE " + appcode);
        //根据API的要求，定义相对应的Content-Type
        headers.put("Content-Type", "application/json; charset=UTF-8");
        Map<String, String> querys = new HashMap<String, String>();
        String bodys = "{\"image\":\"图片二进制数据的base64编码/图片url\"，\"configure\":{\"min_size\":16,#图片中文字的最小高度，单位像素\"output_prob\":true,#是否输出文字框的概率\"output_keypoints\":false,#是否输出文字框角点\"skip_detection\":false#是否跳过文字检测步骤直接进行文字识别\"without_predicting_direction\":false#是否关闭文字行方向预测}}";


        try {
            /**
             * 重要提示如下:
             * HttpUtils请从
             * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/src/main/java/com/aliyun/api/gateway/demo/util/HttpUtils.java
             * 下载
             *
             * 相应的依赖请参照
             * https://github.com/aliyun/api-gateway-demo-sign-java/blob/master/pom.xml
             */
            HttpResponse response = HttpUtils.doPost(host, path, method, headers, querys, bodys);
            System.out.println(response.toString());
            //获取response的body
            //System.out.println(EntityUtils.toString(response.getEntity()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
