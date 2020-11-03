package com.kgc.controller.zhangjiahe;

import com.kgc.service.impl.ExcleImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;


@Controller
public class ExcleController {
    //这里直接new了
    ExcleImpl excleImpl=new ExcleImpl();

    @RequestMapping(value="/download_excel")

//获取url链接上的参数
    public @ResponseBody
    String dowm(HttpServletResponse response, @RequestParam("wid") Integer wid, @RequestParam("user") String user, @RequestParam("replynei") String replynei, @RequestParam("img") String img, @RequestParam("gname") String gname, @RequestParam("wordate") Date wordate){
        response.setContentType("application/binary;charset=UTF-8");
        try{
            ServletOutputStream out=response.getOutputStream();
            try {
                //设置文件头：最后一个参数是设置下载文件名(这里我们叫：张三.pdf)
                response.setHeader("Content-Disposition", "attachment;fileName=" + URLEncoder.encode(gname+".xls", "UTF-8"));
            } catch (UnsupportedEncodingException e1) {
                e1.printStackTrace();
            }

            String[] titles = {"ID", "姓名", "描述", "图片", "班级", "提交时间"};
            Integer wids=wid;
            String users=user;
            String replyneis=replynei;
            String imgs=img;
            String gnames=gname;
            Date wordates=wordate;

            excleImpl.export(titles, out,wids,users,replyneis,imgs,gnames,wordates);
            return "success";
        } catch(Exception e){
            e.printStackTrace();
            return "导出信息失败";
        }
    }
}
