package com.kgc.controller;

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
    @RequestMapping("/")
    public String kai() {
        return "denglu";
    }

    @RequestMapping("/login")//登录
    public String login(String username, String password, Model model, HttpSession session){
        List<User> login = loQianTaiService.login(username, password);
        if(login.size()>0){
            User user=login.get(0);
            List<UserInfo> userInfos = loQianTaiService.selectByAccid(user.getId());
            UserInfo userInfo=userInfos.get(0);
            session.setAttribute("username",userInfo.getNickname());//保存session作用域 昵称
            session.setAttribute("userid",user.getId());//保存session作用域 用户id
            session.setAttribute("usertype",user.getLei());//保存session作用域 用户类型(管理权限)
            return "kgcshouye";
        }else{
            model.addAttribute("msg","账号或密码错误");
            return "denglu";
        }
    }
}
