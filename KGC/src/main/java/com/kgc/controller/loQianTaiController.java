package com.kgc.controller;

import com.kgc.pojo.*;
import com.kgc.service.ZhangUserimgService;
import com.kgc.service.loQianTaiService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class loQianTaiController {
    @Resource
    loQianTaiService loQianTaiService;
    @Resource
    ZhangUserimgService zhangUserimgService;
    @RequestMapping("/")//初始页面跳转
    public String kai() {
        return "denglu";
    }

    @RequestMapping("/login")//登录
    public String login(String username, String password, Model model, HttpSession session){
        List<User> login = loQianTaiService.login(username, password);
        if(login.size()>0){
            User user=login.get(0);
            session.setAttribute("login",user);
            UserInfo userInfos = loQianTaiService.selectByAccidAndUtype(user.getId());
            UserInfo userInfo=userInfos;
            session.setAttribute("userxinxi",userInfo);
            session.setAttribute("username",userInfo.getNickname());//保存session作用域 昵称
            session.setAttribute("userid",user.getId());//保存session作用域 用户id
            session.setAttribute("usertype",user.getLei());//保存session作用域 用户类型(管理权限)
            session.setAttribute("shenfen", user.getLei());//保存session作用域 用户类型(管理权限)
            session.setAttribute("usertable",user);//保存session作用域 账号信息
            userimgExample example=new userimgExample();
            userimgExample.Criteria criteria = example.createCriteria();
            criteria.andUserinfoUseridEqualTo(user.getId());
            List<userimg> userimgs = null;
            try {
                userimgs = zhangUserimgService.selectByExample(example);
                session.setAttribute("userimgs",userimgs.get(0).getUserinfoImgname());//保存session作用域 账号信息个性化背景
            } catch (Exception e) {
                userimg userimg=new userimg();
                userimg.setUserinfoUserid(user.getId());
                userimg.setUserinfoImgdate(new Date());
                zhangUserimgService.insertSelective(userimg);
            }

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
