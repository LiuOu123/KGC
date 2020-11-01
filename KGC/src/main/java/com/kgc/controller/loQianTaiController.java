package com.kgc.controller;

import com.kgc.pojo.Picture;
import com.kgc.pojo.Plei;
import com.kgc.pojo.User;
import com.kgc.pojo.UserInfo;
import com.kgc.service.loQianTaiService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class loQianTaiController {
    @Resource
    loQianTaiService loQianTaiService;
    @RequestMapping("/")//初始页面跳转
    public String kai() {
        return "denglu";
    }

    @RequestMapping("/login")//登录
    public String login(String username, String password, Model model, HttpSession session){
        List<User> login = loQianTaiService.login(username, password);
        if(login.size()>0){
            User user=login.get(0);
            UserInfo userInfos = loQianTaiService.selectByAccidAndUtype(user.getId());
            UserInfo userInfo=userInfos;
            session.setAttribute("userxinxi",userInfo);
            session.setAttribute("username",userInfo.getNickname());//保存session作用域 昵称
            session.setAttribute("userid",user.getId());//保存session作用域 用户id
            session.setAttribute("usertype",user.getLei());//保存session作用域 用户类型(管理权限)
            return "kgcshouye";
        }else{
            model.addAttribute("msg","账号或密码错误");
            return "denglu";
        }
    }

    @RequestMapping("/xilie")//第一次进入系列 读取全部
    public String xilie(Model model){
        List<Picture> pictures = loQianTaiService.selectAll();//查询所有课程
        List<Plei> pleis = loQianTaiService.selectAllPLei();//查找课程的分类
        model.addAttribute("pictures",pictures);
        model.addAttribute("pleis",pleis);
        return "xilie";
    }

    @RequestMapping("/xiliemo")//根据类型去查询系列
    public String xiliemo(Model model,int lei){
        List<Picture> pictures = loQianTaiService.selectBy(lei);
        model.addAttribute("pictures",pictures);
        return "xilie";
    }

    


}
