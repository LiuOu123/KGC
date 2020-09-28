package com.kgc.controller;

import com.kgc.pojo.User;
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

    @RequestMapping("/login")
    public String login(String username, String password, Model model, HttpSession session){
        List<User> login = loQianTaiService.login(username, password);
        if(login.size()>0){
            User user=login.get(0);

            session.setAttribute("userid",user.getId());
            session.setAttribute("usertype",user.getLei());
            return "denglu";
        }else{
            model.addAttribute("msg","账号或密码错误");
            return "denglu";
        }
    }
}
