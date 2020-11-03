package com.kgc.box;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

import java.util.HashMap;
import java.util.Map;

public class newphone {
	public static void main(String[] args) {
		String host = "http://dingxin.market.alicloudapi.com";
	    String path = "/dx/sendSms";
	    String method = "POST";
	    String appcode = "a64d565fcfea4b779efff26c54298110";
	    Map<String, String> headers = new HashMap<String, String>();
	    //最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
	    headers.put("Authorization", "APPCODE " + appcode);
	    Map<String, String> querys = new HashMap<String, String>();
	    querys.put("mobile", "18201429936");
	    querys.put("param", "code:0529");
	    querys.put("tpl_id", "TP18041310");
	    Map<String, String> bodys = new HashMap<String, String>();


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
	    	HttpResponse response = com.kgc.box.HttpUtils.doPost(host, path, method, headers, querys, bodys);
	    	System.out.println(response.toString());
	    	//获取response的body
	    	//System.out.println(EntityUtils.toString(response.getEntity()));
	    	StatusLine statusLine=response.getStatusLine();
	        int statusCode=statusLine.getStatusCode();
	        String reasonPhrase =statusLine.getReasonPhrase();
	        if(200 == statusCode && "OK".equalsIgnoreCase(reasonPhrase)) {
	         System.out.println("成功");
	        }else {
	         System.out.println("失败");
	        }
	    } catch (Exception e) {
	    	e.printStackTrace();
	    }
	}

	public void sendPhone(String phone,int sui){
		String host = "http://dingxin.market.alicloudapi.com";
		String path = "/dx/sendSms";
		String method = "POST";
		String appcode = "a64d565fcfea4b779efff26c54298110";
		Map<String, String> headers = new HashMap<String, String>();
		//最后在header中的格式(中间是英文空格)为Authorization:APPCODE 83359fd73fe94948385f570e3c139105
		headers.put("Authorization", "APPCODE " + appcode);
		Map<String, String> querys = new HashMap<String, String>();
		querys.put("mobile", phone);//要发送人的手机号
		querys.put("param", "code:"+sui+"");
		querys.put("tpl_id", "TP1711063");
		Map<String, String> bodys = new HashMap<String, String>();
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
			HttpResponse response = com.kgc.box.HttpUtils.doPost(host, path, method, headers, querys, bodys);
			System.out.println(response.toString());
			//获取response的body
			//System.out.println(EntityUtils.toString(response.getEntity()));
			StatusLine statusLine=response.getStatusLine();
			int statusCode=statusLine.getStatusCode();
			String reasonPhrase =statusLine.getReasonPhrase();
			if(200 == statusCode && "OK".equalsIgnoreCase(reasonPhrase)) {
				System.out.println("成功");
			}else {
				System.out.println("失败");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
